; Auto-generated. Do not edit!


(cl:in-package dialog-srv)


;//! \htmlinclude speak-request.msg.html

(cl:defclass <speak-request> (roslisp-msg-protocol:ros-message)
  ((text_t2s
    :reader text_t2s
    :initarg :text_t2s
    :type cl:string
    :initform ""))
)

(cl:defclass speak-request (<speak-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speak-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speak-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dialog-srv:<speak-request> is deprecated: use dialog-srv:speak-request instead.")))

(cl:ensure-generic-function 'text_t2s-val :lambda-list '(m))
(cl:defmethod text_t2s-val ((m <speak-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dialog-srv:text_t2s-val is deprecated.  Use dialog-srv:text_t2s instead.")
  (text_t2s m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speak-request>) ostream)
  "Serializes a message object of type '<speak-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text_t2s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text_t2s))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speak-request>) istream)
  "Deserializes a message object of type '<speak-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text_t2s) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text_t2s) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speak-request>)))
  "Returns string type for a service object of type '<speak-request>"
  "dialog/speakRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speak-request)))
  "Returns string type for a service object of type 'speak-request"
  "dialog/speakRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speak-request>)))
  "Returns md5sum for a message object of type '<speak-request>"
  "cb3eeceaf06182d7c3ca6a3287af50f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speak-request)))
  "Returns md5sum for a message object of type 'speak-request"
  "cb3eeceaf06182d7c3ca6a3287af50f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speak-request>)))
  "Returns full string definition for message of type '<speak-request>"
  (cl:format cl:nil "string text_t2s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speak-request)))
  "Returns full string definition for message of type 'speak-request"
  (cl:format cl:nil "string text_t2s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speak-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text_t2s))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speak-request>))
  "Converts a ROS message object to a list"
  (cl:list 'speak-request
    (cl:cons ':text_t2s (text_t2s msg))
))
;//! \htmlinclude speak-response.msg.html

(cl:defclass <speak-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass speak-response (<speak-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speak-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speak-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dialog-srv:<speak-response> is deprecated: use dialog-srv:speak-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <speak-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dialog-srv:result-val is deprecated.  Use dialog-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speak-response>) ostream)
  "Serializes a message object of type '<speak-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speak-response>) istream)
  "Deserializes a message object of type '<speak-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speak-response>)))
  "Returns string type for a service object of type '<speak-response>"
  "dialog/speakResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speak-response)))
  "Returns string type for a service object of type 'speak-response"
  "dialog/speakResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speak-response>)))
  "Returns md5sum for a message object of type '<speak-response>"
  "cb3eeceaf06182d7c3ca6a3287af50f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speak-response)))
  "Returns md5sum for a message object of type 'speak-response"
  "cb3eeceaf06182d7c3ca6a3287af50f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speak-response>)))
  "Returns full string definition for message of type '<speak-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speak-response)))
  "Returns full string definition for message of type 'speak-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speak-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speak-response>))
  "Converts a ROS message object to a list"
  (cl:list 'speak-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'speak)))
  'speak-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'speak)))
  'speak-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speak)))
  "Returns string type for a service object of type '<speak>"
  "dialog/speak")