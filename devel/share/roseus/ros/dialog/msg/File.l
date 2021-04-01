;; Auto-generated. Do not edit!


(when (boundp 'dialog::File)
  (if (not (find-package "DIALOG"))
    (make-package "DIALOG"))
  (shadow 'File (find-package "DIALOG")))
(unless (find-package "DIALOG::FILE")
  (make-package "DIALOG::FILE"))

(in-package "ROS")
;;//! \htmlinclude File.msg.html


(defclass dialog::File
  :super ros::object
  :slots (_data _extension ))

(defmethod dialog::File
  (:init
   (&key
    ((:data __data) "")
    ((:extension __extension) "")
    )
   (send-super :init)
   (setq _data (string __data))
   (setq _extension (string __extension))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:extension
   (&optional __extension)
   (if __extension (setq _extension __extension)) _extension)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ;; string _extension
    4 (length _extension)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; string _extension
       (write-long (length _extension) s) (princ _extension s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _extension
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _extension (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dialog::File :md5sum-) "88be86ccd453e2070ff3582ad605e3d2")
(setf (get dialog::File :datatype-) "dialog/File")
(setf (get dialog::File :definition-)
      "string data
string extension

")



(provide :dialog/File "88be86ccd453e2070ff3582ad605e3d2")


