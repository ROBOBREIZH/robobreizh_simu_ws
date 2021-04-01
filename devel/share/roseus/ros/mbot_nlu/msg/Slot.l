;; Auto-generated. Do not edit!


(when (boundp 'mbot_nlu::Slot)
  (if (not (find-package "MBOT_NLU"))
    (make-package "MBOT_NLU"))
  (shadow 'Slot (find-package "MBOT_NLU")))
(unless (find-package "MBOT_NLU::SLOT")
  (make-package "MBOT_NLU::SLOT"))

(in-package "ROS")
;;//! \htmlinclude Slot.msg.html


(defclass mbot_nlu::Slot
  :super ros::object
  :slots (_type _data ))

(defmethod mbot_nlu::Slot
  (:init
   (&key
    ((:type __type) "")
    ((:data __data) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _data (string __data))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mbot_nlu::Slot :md5sum-) "167124529e10dda68e69162baeaee3b8")
(setf (get mbot_nlu::Slot :datatype-) "mbot_nlu/Slot")
(setf (get mbot_nlu::Slot :definition-)
      "string type
string data

")



(provide :mbot_nlu/Slot "167124529e10dda68e69162baeaee3b8")


