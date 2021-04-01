;; Auto-generated. Do not edit!


(when (boundp 'dialog::Wav)
  (if (not (find-package "DIALOG"))
    (make-package "DIALOG"))
  (shadow 'Wav (find-package "DIALOG")))
(unless (find-package "DIALOG::WAV")
  (make-package "DIALOG::WAV"))

(in-package "ROS")
;;//! \htmlinclude Wav.msg.html


(defclass dialog::Wav
  :super ros::object
  :slots (_fs _chl _chr ))

(defmethod dialog::Wav
  (:init
   (&key
    ((:fs __fs) 0)
    ((:chl __chl) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:chr __chr) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _fs (round __fs))
   (setq _chl __chl)
   (setq _chr __chr)
   self)
  (:fs
   (&optional __fs)
   (if __fs (setq _fs __fs)) _fs)
  (:chl
   (&optional __chl)
   (if __chl (setq _chl __chl)) _chl)
  (:chr
   (&optional __chr)
   (if __chr (setq _chr __chr)) _chr)
  (:serialization-length
   ()
   (+
    ;; int32 _fs
    4
    ;; float32[] _chl
    (* 4    (length _chl)) 4
    ;; float32[] _chr
    (* 4    (length _chr)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _fs
       (write-long _fs s)
     ;; float32[] _chl
     (write-long (length _chl) s)
     (dotimes (i (length _chl))
       (sys::poke (elt _chl i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _chr
     (write-long (length _chr) s)
     (dotimes (i (length _chr))
       (sys::poke (elt _chr i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _fs
     (setq _fs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _chl
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _chl (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _chl i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _chr
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _chr (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _chr i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get dialog::Wav :md5sum-) "cd12d0f67404dd8368da8a8a7e79c981")
(setf (get dialog::Wav :datatype-) "dialog/Wav")
(setf (get dialog::Wav :definition-)
      "int32 fs
float32[] chl
float32[] chr

")



(provide :dialog/Wav "cd12d0f67404dd8368da8a8a7e79c981")


