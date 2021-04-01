; Auto-generated. Do not edit!


(cl:in-package dialog-msg)


;//! \htmlinclude T2S.msg.html

(cl:defclass <T2S> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (language
    :reader language
    :initarg :language
    :type cl:string
    :initform ""))
)

(cl:defclass T2S (<T2S>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <T2S>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'T2S)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dialog-msg:<T2S> is deprecated: use dialog-msg:T2S instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <T2S>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dialog-msg:text-val is deprecated.  Use dialog-msg:text instead.")
  (text m))

(cl:ensure-generic-function 'language-val :lambda-list '(m))
(cl:defmethod language-val ((m <T2S>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dialog-msg:language-val is deprecated.  Use dialog-msg:language instead.")
  (language m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <T2S>) ostream)
  "Serializes a message object of type '<T2S>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'language))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'language))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <T2S>) istream)
  "Deserializes a message object of type '<T2S>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'language) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'language) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<T2S>)))
  "Returns string type for a message object of type '<T2S>"
  "dialog/T2S")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'T2S)))
  "Returns string type for a message object of type 'T2S"
  "dialog/T2S")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<T2S>)))
  "Returns md5sum for a message object of type '<T2S>"
  "8227818ab6074445792448d628153554")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'T2S)))
  "Returns md5sum for a message object of type 'T2S"
  "8227818ab6074445792448d628153554")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<T2S>)))
  "Returns full string definition for message of type '<T2S>"
  (cl:format cl:nil "string text~%string language~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'T2S)))
  "Returns full string definition for message of type 'T2S"
  (cl:format cl:nil "string text~%string language~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <T2S>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
     4 (cl:length (cl:slot-value msg 'language))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <T2S>))
  "Converts a ROS message object to a list"
  (cl:list 'T2S
    (cl:cons ':text (text msg))
    (cl:cons ':language (language msg))
))
