;; Auto-generated. Do not edit!


(when (boundp 'navigation::CurrentPos)
  (if (not (find-package "NAVIGATION"))
    (make-package "NAVIGATION"))
  (shadow 'CurrentPos (find-package "NAVIGATION")))
(unless (find-package "NAVIGATION::CURRENTPOS")
  (make-package "NAVIGATION::CURRENTPOS"))

(in-package "ROS")
;;//! \htmlinclude CurrentPos.msg.html


(defclass navigation::CurrentPos
  :super ros::object
  :slots (_posX _posY _alpha ))

(defmethod navigation::CurrentPos
  (:init
   (&key
    ((:posX __posX) 0.0)
    ((:posY __posY) 0.0)
    ((:alpha __alpha) 0.0)
    )
   (send-super :init)
   (setq _posX (float __posX))
   (setq _posY (float __posY))
   (setq _alpha (float __alpha))
   self)
  (:posX
   (&optional __posX)
   (if __posX (setq _posX __posX)) _posX)
  (:posY
   (&optional __posY)
   (if __posY (setq _posY __posY)) _posY)
  (:alpha
   (&optional __alpha)
   (if __alpha (setq _alpha __alpha)) _alpha)
  (:serialization-length
   ()
   (+
    ;; float32 _posX
    4
    ;; float32 _posY
    4
    ;; float32 _alpha
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _posX
       (sys::poke _posX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _posY
       (sys::poke _posY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alpha
       (sys::poke _alpha (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _posX
     (setq _posX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _posY
     (setq _posY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alpha
     (setq _alpha (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get navigation::CurrentPos :md5sum-) "541b695709a53604a4ebf6a833186a0b")
(setf (get navigation::CurrentPos :datatype-) "navigation/CurrentPos")
(setf (get navigation::CurrentPos :definition-)
      "float32 posX
float32 posY
float32 alpha

")



(provide :navigation/CurrentPos "541b695709a53604a4ebf6a833186a0b")


