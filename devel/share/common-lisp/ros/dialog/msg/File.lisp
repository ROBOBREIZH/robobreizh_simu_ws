; Auto-generated. Do not edit!


(cl:in-package dialog-msg)


;//! \htmlinclude File.msg.html

(cl:defclass <File> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform "")
   (extension
    :reader extension
    :initarg :extension
    :type cl:string
    :initform ""))
)

(cl:defclass File (<File>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <File>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'File)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dialog-msg:<File> is deprecated: use dialog-msg:File instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <File>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dialog-msg:data-val is deprecated.  Use dialog-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'extension-val :lambda-list '(m))
(cl:defmethod extension-val ((m <File>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dialog-msg:extension-val is deprecated.  Use dialog-msg:extension instead.")
  (extension m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <File>) ostream)
  "Serializes a message object of type '<File>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'extension))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'extension))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <File>) istream)
  "Deserializes a message object of type '<File>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'extension) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'extension) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<File>)))
  "Returns string type for a message object of type '<File>"
  "dialog/File")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'File)))
  "Returns string type for a message object of type 'File"
  "dialog/File")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<File>)))
  "Returns md5sum for a message object of type '<File>"
  "88be86ccd453e2070ff3582ad605e3d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'File)))
  "Returns md5sum for a message object of type 'File"
  "88be86ccd453e2070ff3582ad605e3d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<File>)))
  "Returns full string definition for message of type '<File>"
  (cl:format cl:nil "string data~%string extension~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'File)))
  "Returns full string definition for message of type 'File"
  (cl:format cl:nil "string data~%string extension~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <File>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
     4 (cl:length (cl:slot-value msg 'extension))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <File>))
  "Converts a ROS message object to a list"
  (cl:list 'File
    (cl:cons ':data (data msg))
    (cl:cons ':extension (extension msg))
))
