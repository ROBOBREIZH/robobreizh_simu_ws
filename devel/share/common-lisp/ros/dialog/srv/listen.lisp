; Auto-generated. Do not edit!


(cl:in-package dialog-srv)


;//! \htmlinclude listen-request.msg.html

(cl:defclass <listen-request> (roslisp-msg-protocol:ros-message)
  ((send
    :reader send
    :initarg :send
    :type cl:string
    :initform ""))
)

(cl:defclass listen-request (<listen-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <listen-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'listen-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dialog-srv:<listen-request> is deprecated: use dialog-srv:listen-request instead.")))

(cl:ensure-generic-function 'send-val :lambda-list '(m))
(cl:defmethod send-val ((m <listen-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dialog-srv:send-val is deprecated.  Use dialog-srv:send instead.")
  (send m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <listen-request>) ostream)
  "Serializes a message object of type '<listen-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'send))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'send))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <listen-request>) istream)
  "Deserializes a message object of type '<listen-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'send) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'send) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<listen-request>)))
  "Returns string type for a service object of type '<listen-request>"
  "dialog/listenRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'listen-request)))
  "Returns string type for a service object of type 'listen-request"
  "dialog/listenRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<listen-request>)))
  "Returns md5sum for a message object of type '<listen-request>"
  "097728e714f8ef53acfa9772a3a81d05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'listen-request)))
  "Returns md5sum for a message object of type 'listen-request"
  "097728e714f8ef53acfa9772a3a81d05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<listen-request>)))
  "Returns full string definition for message of type '<listen-request>"
  (cl:format cl:nil "string send~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'listen-request)))
  "Returns full string definition for message of type 'listen-request"
  (cl:format cl:nil "string send~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <listen-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'send))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <listen-request>))
  "Converts a ROS message object to a list"
  (cl:list 'listen-request
    (cl:cons ':send (send msg))
))
;//! \htmlinclude listen-response.msg.html

(cl:defclass <listen-response> (roslisp-msg-protocol:ros-message)
  ((text_s2t
    :reader text_s2t
    :initarg :text_s2t
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass listen-response (<listen-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <listen-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'listen-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dialog-srv:<listen-response> is deprecated: use dialog-srv:listen-response instead.")))

(cl:ensure-generic-function 'text_s2t-val :lambda-list '(m))
(cl:defmethod text_s2t-val ((m <listen-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dialog-srv:text_s2t-val is deprecated.  Use dialog-srv:text_s2t instead.")
  (text_s2t m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <listen-response>) ostream)
  "Serializes a message object of type '<listen-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'text_s2t))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'text_s2t))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <listen-response>) istream)
  "Deserializes a message object of type '<listen-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'text_s2t) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'text_s2t)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<listen-response>)))
  "Returns string type for a service object of type '<listen-response>"
  "dialog/listenResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'listen-response)))
  "Returns string type for a service object of type 'listen-response"
  "dialog/listenResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<listen-response>)))
  "Returns md5sum for a message object of type '<listen-response>"
  "097728e714f8ef53acfa9772a3a81d05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'listen-response)))
  "Returns md5sum for a message object of type 'listen-response"
  "097728e714f8ef53acfa9772a3a81d05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<listen-response>)))
  "Returns full string definition for message of type '<listen-response>"
  (cl:format cl:nil "string[] text_s2t~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'listen-response)))
  "Returns full string definition for message of type 'listen-response"
  (cl:format cl:nil "string[] text_s2t~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <listen-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'text_s2t) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <listen-response>))
  "Converts a ROS message object to a list"
  (cl:list 'listen-response
    (cl:cons ':text_s2t (text_s2t msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'listen)))
  'listen-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'listen)))
  'listen-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'listen)))
  "Returns string type for a service object of type '<listen>"
  "dialog/listen")