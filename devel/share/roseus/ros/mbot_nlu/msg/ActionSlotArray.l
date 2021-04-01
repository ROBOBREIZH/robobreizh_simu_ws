;; Auto-generated. Do not edit!


(when (boundp 'mbot_nlu::ActionSlotArray)
  (if (not (find-package "MBOT_NLU"))
    (make-package "MBOT_NLU"))
  (shadow 'ActionSlotArray (find-package "MBOT_NLU")))
(unless (find-package "MBOT_NLU::ACTIONSLOTARRAY")
  (make-package "MBOT_NLU::ACTIONSLOTARRAY"))

(in-package "ROS")
;;//! \htmlinclude ActionSlotArray.msg.html


(defclass mbot_nlu::ActionSlotArray
  :super ros::object
  :slots (_sentence_recognition ))

(defmethod mbot_nlu::ActionSlotArray
  (:init
   (&key
    ((:sentence_recognition __sentence_recognition) (let (r) (dotimes (i 0) (push (instance mbot_nlu::ActionSlot :init) r)) r))
    )
   (send-super :init)
   (setq _sentence_recognition __sentence_recognition)
   self)
  (:sentence_recognition
   (&rest __sentence_recognition)
   (if (keywordp (car __sentence_recognition))
       (send* _sentence_recognition __sentence_recognition)
     (progn
       (if __sentence_recognition (setq _sentence_recognition (car __sentence_recognition)))
       _sentence_recognition)))
  (:serialization-length
   ()
   (+
    ;; mbot_nlu/ActionSlot[] _sentence_recognition
    (apply #'+ (send-all _sentence_recognition :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mbot_nlu/ActionSlot[] _sentence_recognition
     (write-long (length _sentence_recognition) s)
     (dolist (elem _sentence_recognition)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mbot_nlu/ActionSlot[] _sentence_recognition
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sentence_recognition (let (r) (dotimes (i n) (push (instance mbot_nlu::ActionSlot :init) r)) r))
     (dolist (elem- _sentence_recognition)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mbot_nlu::ActionSlotArray :md5sum-) "5ac2cee11a45480fcd32ce9716a74e6d")
(setf (get mbot_nlu::ActionSlotArray :datatype-) "mbot_nlu/ActionSlotArray")
(setf (get mbot_nlu::ActionSlotArray :definition-)
      "# a sentence gets divided into phrases and for each
# phrase you get an intention and arguments, therefore
# in the case of having one phrase to recognize the lenght
# of this array should be 1
ActionSlot[] sentence_recognition

================================================================================
MSG: mbot_nlu/ActionSlot
string intention
Slot[] slots

================================================================================
MSG: mbot_nlu/Slot
string type
string data

")



(provide :mbot_nlu/ActionSlotArray "5ac2cee11a45480fcd32ce9716a74e6d")


