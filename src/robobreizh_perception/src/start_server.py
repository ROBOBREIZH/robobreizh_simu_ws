import os
import sys
import argparse
import torch

sys.path.append(os.getcwd())

from socket import *
import json
from detect import DetectRobocup
from utils.img_conversion import base64_to_cv2


from struct import unpack, pack


class ServerProtocol:

	def __init__(self):
		self.socket = None
		self.output_dir = '.'
		self.file_num = 1
		self.detector = DetectRobocup()


	def listen(self, server_ip, server_port):
		self.socket = socket(AF_INET, SOCK_STREAM)
		self.socket.bind((server_ip, server_port))
		self.socket.listen(1)

	def handle_images(self):

		try:
			while True:
				(connection, addr) = self.socket.accept()
				try:
					bs = connection.recv(8)
					(length,) = unpack('>Q', bs)
					data = b''
					while len(data) < length:
						# doing it in batches is generally better than trying
						# to do it all in one go, so I believe.
						to_read = length - len(data)
						data += connection.recv(
							4096 if to_read > 4096 else to_read)

					response = json.loads(data.decode('utf-8'))
					img = base64_to_cv2(response['image'])
					objects = response['objects']

					result = {}
					if "empty_chairs" in objects:
						result["empty_chairs"] = (self.detector.detect_empyt_chairs(img))
						objects.remove("empty_chairs")
					if "taken_chairs" in objects:
						result["taken_chairs"] = (self.detector.detect_taken_chairs(img))
						objects.remove("taken_chairs")
					if "all_chairs" in objects:
						result["taken_chairs"] = (self.detector.detect_chairs(img))
						objects.remove("all_chairs")

					if objects:
						r = self.detector.detect_objects(img, objects)
						result.update(r)

					res_bytes = json.dumps(result).encode('utf-8') 
					print("Image analyzed, sending back masks")
					length = pack('>Q', len(res_bytes))

					connection.sendall(length)

					connection.sendall(res_bytes)
					print("Data sent")

				finally:
					connection.shutdown(SHUT_WR)
					connection.close()

				self.file_num += 1
		finally:
			self.close()

	def close(self):
		self.socket.close()
		self.socket = None

		# could handle a bad ack here, but we'll assume it's fine.

if __name__ == '__main__':
	sp = ServerProtocol()
	sp.listen('127.0.0.1', 55555)
	print("Listening")
	sp.handle_images()


# if __name__ == '__main__':
# 	parser = argparse.ArgumentParser()
# 	parser.add_argument("--ip", help="scoket ip to bind")
# 	args = parser.parse_args()
# 	socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
# 	if args.ip:
# 		socket.bind((args.ip, 9986))
# 	else:
# 		socket.bind(('127.0.0.1', 9986))

# 	detector = DetectRobocup()

# 	while True:
# 		print("Listening")
# 		socket.listen(1)
# 		client, address = socket.accept()
# 		print("{} connected".format(address))

# 		response = client.recv(999999)
		
# 		'''Format du message:
# 		dic("image", "list required detected objects")
# 		'''
# 		response = json.loads(response.decode('utf-8'))
# 		img = base64_to_cv2(response['image'])
# 		objects = response['objects']

# 		result = {}
# 		if "empty_chairs" in objects:
# 			result["empty_chairs"] = (detector.detect_empyt_chairs(img))
# 			objects.remove("empty_chairs")
# 		if "taken_chairs" in objects:
# 			result["taken_chairs"] = (detector.detect_taken_chairs(img))
# 			objects.remove("taken_chairs")
# 		if "all_chairs" in objects:
# 			result["taken_chairs"] = (detector.detect_chairs(img))
# 			objects.remove("all_chairs")

# 		if objects:
# 			r = detector.detect_objects(img, objects)
# 			result.update(r)
# 		res_bytes = json.dumps(result).encode('utf-8') 
# 		print(res_bytes)
# 		client.send(res_bytes)

# 	print("Close")
# 	client.close()
# 	socket.close()