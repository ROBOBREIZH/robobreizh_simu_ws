;; Auto-generated. Do not edit!


(when (boundp 'dialog::T2S)
  (if (not (find-package "DIALOG"))
    (make-package "DIALOG"))
  (shadow 'T2S (find-package "DIALOG")))
(unless (find-package "DIALOG::T2S")
  (make-package "DIALOG::T2S"))

(in-package "ROS")
;;//! \htmlinclude T2S.msg.html


(defclass dialog::T2S
  :super ros::object
  :slots (_text _language ))

(defmethod dialog::T2S
  (:init
   (&key
    ((:text __text) "")
    ((:language __language) "")
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _language (string __language))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:language
   (&optional __language)
   (if __language (setq _language __language)) _language)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; string _language
    4 (length _language)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; string _language
       (write-long (length _language) s) (princ _language s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _language
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _language (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dialog::T2S :md5sum-) "8227818ab6074445792448d628153554")
(setf (get dialog::T2S :datatype-) "dialog/T2S")
(setf (get dialog::T2S :definition-)
      "string text
string language

")



(provide :dialog/T2S "8227818ab6074445792448d628153554")


