; Auto-generated. Do not edit!


(cl:in-package mbot_nlu-msg)


;//! \htmlinclude Slot.msg.html

(cl:defclass <Slot> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass Slot (<Slot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Slot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Slot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mbot_nlu-msg:<Slot> is deprecated: use mbot_nlu-msg:Slot instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Slot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbot_nlu-msg:type-val is deprecated.  Use mbot_nlu-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Slot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbot_nlu-msg:data-val is deprecated.  Use mbot_nlu-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Slot>) ostream)
  "Serializes a message object of type '<Slot>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Slot>) istream)
  "Deserializes a message object of type '<Slot>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Slot>)))
  "Returns string type for a message object of type '<Slot>"
  "mbot_nlu/Slot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Slot)))
  "Returns string type for a message object of type 'Slot"
  "mbot_nlu/Slot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Slot>)))
  "Returns md5sum for a message object of type '<Slot>"
  "167124529e10dda68e69162baeaee3b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Slot)))
  "Returns md5sum for a message object of type 'Slot"
  "167124529e10dda68e69162baeaee3b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Slot>)))
  "Returns full string definition for message of type '<Slot>"
  (cl:format cl:nil "string type~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Slot)))
  "Returns full string definition for message of type 'Slot"
  (cl:format cl:nil "string type~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Slot>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Slot>))
  "Converts a ROS message object to a list"
  (cl:list 'Slot
    (cl:cons ':type (type msg))
    (cl:cons ':data (data msg))
))
