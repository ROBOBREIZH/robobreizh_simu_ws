;; Auto-generated. Do not edit!


(when (boundp 'mbot_nlu::ActionSlot)
  (if (not (find-package "MBOT_NLU"))
    (make-package "MBOT_NLU"))
  (shadow 'ActionSlot (find-package "MBOT_NLU")))
(unless (find-package "MBOT_NLU::ACTIONSLOT")
  (make-package "MBOT_NLU::ACTIONSLOT"))

(in-package "ROS")
;;//! \htmlinclude ActionSlot.msg.html


(defclass mbot_nlu::ActionSlot
  :super ros::object
  :slots (_intention _slots ))

(defmethod mbot_nlu::ActionSlot
  (:init
   (&key
    ((:intention __intention) "")
    ((:slots __slots) (let (r) (dotimes (i 0) (push (instance mbot_nlu::Slot :init) r)) r))
    )
   (send-super :init)
   (setq _intention (string __intention))
   (setq _slots __slots)
   self)
  (:intention
   (&optional __intention)
   (if __intention (setq _intention __intention)) _intention)
  (:slots
   (&rest __slots)
   (if (keywordp (car __slots))
       (send* _slots __slots)
     (progn
       (if __slots (setq _slots (car __slots)))
       _slots)))
  (:serialization-length
   ()
   (+
    ;; string _intention
    4 (length _intention)
    ;; mbot_nlu/Slot[] _slots
    (apply #'+ (send-all _slots :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _intention
       (write-long (length _intention) s) (princ _intention s)
     ;; mbot_nlu/Slot[] _slots
     (write-long (length _slots) s)
     (dolist (elem _slots)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _intention
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _intention (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mbot_nlu/Slot[] _slots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _slots (let (r) (dotimes (i n) (push (instance mbot_nlu::Slot :init) r)) r))
     (dolist (elem- _slots)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mbot_nlu::ActionSlot :md5sum-) "95d873f61ab7124887d29a04f0f7906c")
(setf (get mbot_nlu::ActionSlot :datatype-) "mbot_nlu/ActionSlot")
(setf (get mbot_nlu::ActionSlot :definition-)
      "string intention
Slot[] slots

================================================================================
MSG: mbot_nlu/Slot
string type
string data

")



(provide :mbot_nlu/ActionSlot "95d873f61ab7124887d29a04f0f7906c")


