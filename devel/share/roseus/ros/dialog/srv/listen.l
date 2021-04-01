;; Auto-generated. Do not edit!


(when (boundp 'dialog::listen)
  (if (not (find-package "DIALOG"))
    (make-package "DIALOG"))
  (shadow 'listen (find-package "DIALOG")))
(unless (find-package "DIALOG::LISTEN")
  (make-package "DIALOG::LISTEN"))
(unless (find-package "DIALOG::LISTENREQUEST")
  (make-package "DIALOG::LISTENREQUEST"))
(unless (find-package "DIALOG::LISTENRESPONSE")
  (make-package "DIALOG::LISTENRESPONSE"))

(in-package "ROS")





(defclass dialog::listenRequest
  :super ros::object
  :slots (_send ))

(defmethod dialog::listenRequest
  (:init
   (&key
    ((:send __send) "")
    )
   (send-super :init)
   (setq _send (string __send))
   self)
  (:send
   (&optional __send)
   (if __send (setq _send __send)) _send)
  (:serialization-length
   ()
   (+
    ;; string _send
    4 (length _send)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _send
       (write-long (length _send) s) (princ _send s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _send
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _send (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dialog::listenResponse
  :super ros::object
  :slots (_text_s2t ))

(defmethod dialog::listenResponse
  (:init
   (&key
    ((:text_s2t __text_s2t) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _text_s2t __text_s2t)
   self)
  (:text_s2t
   (&optional __text_s2t)
   (if __text_s2t (setq _text_s2t __text_s2t)) _text_s2t)
  (:serialization-length
   ()
   (+
    ;; string[] _text_s2t
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _text_s2t)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _text_s2t
     (write-long (length _text_s2t) s)
     (dolist (elem _text_s2t)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _text_s2t
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _text_s2t (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _text_s2t i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass dialog::listen
  :super ros::object
  :slots ())

(setf (get dialog::listen :md5sum-) "097728e714f8ef53acfa9772a3a81d05")
(setf (get dialog::listen :datatype-) "dialog/listen")
(setf (get dialog::listen :request) dialog::listenRequest)
(setf (get dialog::listen :response) dialog::listenResponse)

(defmethod dialog::listenRequest
  (:response () (instance dialog::listenResponse :init)))

(setf (get dialog::listenRequest :md5sum-) "097728e714f8ef53acfa9772a3a81d05")
(setf (get dialog::listenRequest :datatype-) "dialog/listenRequest")
(setf (get dialog::listenRequest :definition-)
      "string send
---
string[] text_s2t


")

(setf (get dialog::listenResponse :md5sum-) "097728e714f8ef53acfa9772a3a81d05")
(setf (get dialog::listenResponse :datatype-) "dialog/listenResponse")
(setf (get dialog::listenResponse :definition-)
      "string send
---
string[] text_s2t


")



(provide :dialog/listen "097728e714f8ef53acfa9772a3a81d05")


