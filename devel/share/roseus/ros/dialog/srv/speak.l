;; Auto-generated. Do not edit!


(when (boundp 'dialog::speak)
  (if (not (find-package "DIALOG"))
    (make-package "DIALOG"))
  (shadow 'speak (find-package "DIALOG")))
(unless (find-package "DIALOG::SPEAK")
  (make-package "DIALOG::SPEAK"))
(unless (find-package "DIALOG::SPEAKREQUEST")
  (make-package "DIALOG::SPEAKREQUEST"))
(unless (find-package "DIALOG::SPEAKRESPONSE")
  (make-package "DIALOG::SPEAKRESPONSE"))

(in-package "ROS")





(defclass dialog::speakRequest
  :super ros::object
  :slots (_text_t2s ))

(defmethod dialog::speakRequest
  (:init
   (&key
    ((:text_t2s __text_t2s) "")
    )
   (send-super :init)
   (setq _text_t2s (string __text_t2s))
   self)
  (:text_t2s
   (&optional __text_t2s)
   (if __text_t2s (setq _text_t2s __text_t2s)) _text_t2s)
  (:serialization-length
   ()
   (+
    ;; string _text_t2s
    4 (length _text_t2s)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text_t2s
       (write-long (length _text_t2s) s) (princ _text_t2s s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text_t2s
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text_t2s (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dialog::speakResponse
  :super ros::object
  :slots (_result ))

(defmethod dialog::speakResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dialog::speak
  :super ros::object
  :slots ())

(setf (get dialog::speak :md5sum-) "cb3eeceaf06182d7c3ca6a3287af50f5")
(setf (get dialog::speak :datatype-) "dialog/speak")
(setf (get dialog::speak :request) dialog::speakRequest)
(setf (get dialog::speak :response) dialog::speakResponse)

(defmethod dialog::speakRequest
  (:response () (instance dialog::speakResponse :init)))

(setf (get dialog::speakRequest :md5sum-) "cb3eeceaf06182d7c3ca6a3287af50f5")
(setf (get dialog::speakRequest :datatype-) "dialog/speakRequest")
(setf (get dialog::speakRequest :definition-)
      "string text_t2s
---
bool result

")

(setf (get dialog::speakResponse :md5sum-) "cb3eeceaf06182d7c3ca6a3287af50f5")
(setf (get dialog::speakResponse :datatype-) "dialog/speakResponse")
(setf (get dialog::speakResponse :definition-)
      "string text_t2s
---
bool result

")



(provide :dialog/speak "cb3eeceaf06182d7c3ca6a3287af50f5")


