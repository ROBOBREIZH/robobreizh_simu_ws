; Auto-generated. Do not edit!


(cl:in-package navigation-msg)


;//! \htmlinclude CurrentPos.msg.html

(cl:defclass <CurrentPos> (roslisp-msg-protocol:ros-message)
  ((posX
    :reader posX
    :initarg :posX
    :type cl:float
    :initform 0.0)
   (posY
    :reader posY
    :initarg :posY
    :type cl:float
    :initform 0.0)
   (alpha
    :reader alpha
    :initarg :alpha
    :type cl:float
    :initform 0.0))
)

(cl:defclass CurrentPos (<CurrentPos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentPos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentPos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation-msg:<CurrentPos> is deprecated: use navigation-msg:CurrentPos instead.")))

(cl:ensure-generic-function 'posX-val :lambda-list '(m))
(cl:defmethod posX-val ((m <CurrentPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:posX-val is deprecated.  Use navigation-msg:posX instead.")
  (posX m))

(cl:ensure-generic-function 'posY-val :lambda-list '(m))
(cl:defmethod posY-val ((m <CurrentPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:posY-val is deprecated.  Use navigation-msg:posY instead.")
  (posY m))

(cl:ensure-generic-function 'alpha-val :lambda-list '(m))
(cl:defmethod alpha-val ((m <CurrentPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:alpha-val is deprecated.  Use navigation-msg:alpha instead.")
  (alpha m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentPos>) ostream)
  "Serializes a message object of type '<CurrentPos>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'posX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'posY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'alpha))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentPos>) istream)
  "Deserializes a message object of type '<CurrentPos>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'alpha) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentPos>)))
  "Returns string type for a message object of type '<CurrentPos>"
  "navigation/CurrentPos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentPos)))
  "Returns string type for a message object of type 'CurrentPos"
  "navigation/CurrentPos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentPos>)))
  "Returns md5sum for a message object of type '<CurrentPos>"
  "541b695709a53604a4ebf6a833186a0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentPos)))
  "Returns md5sum for a message object of type 'CurrentPos"
  "541b695709a53604a4ebf6a833186a0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentPos>)))
  "Returns full string definition for message of type '<CurrentPos>"
  (cl:format cl:nil "float32 posX~%float32 posY~%float32 alpha~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentPos)))
  "Returns full string definition for message of type 'CurrentPos"
  (cl:format cl:nil "float32 posX~%float32 posY~%float32 alpha~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentPos>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentPos>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentPos
    (cl:cons ':posX (posX msg))
    (cl:cons ':posY (posY msg))
    (cl:cons ':alpha (alpha msg))
))
