; Auto-generated. Do not edit!


(cl:in-package dialog-msg)


;//! \htmlinclude Wav.msg.html

(cl:defclass <Wav> (roslisp-msg-protocol:ros-message)
  ((fs
    :reader fs
    :initarg :fs
    :type cl:integer
    :initform 0)
   (chl
    :reader chl
    :initarg :chl
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (chr
    :reader chr
    :initarg :chr
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Wav (<Wav>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wav>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wav)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dialog-msg:<Wav> is deprecated: use dialog-msg:Wav instead.")))

(cl:ensure-generic-function 'fs-val :lambda-list '(m))
(cl:defmethod fs-val ((m <Wav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dialog-msg:fs-val is deprecated.  Use dialog-msg:fs instead.")
  (fs m))

(cl:ensure-generic-function 'chl-val :lambda-list '(m))
(cl:defmethod chl-val ((m <Wav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dialog-msg:chl-val is deprecated.  Use dialog-msg:chl instead.")
  (chl m))

(cl:ensure-generic-function 'chr-val :lambda-list '(m))
(cl:defmethod chr-val ((m <Wav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dialog-msg:chr-val is deprecated.  Use dialog-msg:chr instead.")
  (chr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wav>) ostream)
  "Serializes a message object of type '<Wav>"
  (cl:let* ((signed (cl:slot-value msg 'fs)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'chl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'chl))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'chr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'chr))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wav>) istream)
  "Deserializes a message object of type '<Wav>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fs) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'chl) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'chl)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'chr) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'chr)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wav>)))
  "Returns string type for a message object of type '<Wav>"
  "dialog/Wav")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wav)))
  "Returns string type for a message object of type 'Wav"
  "dialog/Wav")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wav>)))
  "Returns md5sum for a message object of type '<Wav>"
  "cd12d0f67404dd8368da8a8a7e79c981")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wav)))
  "Returns md5sum for a message object of type 'Wav"
  "cd12d0f67404dd8368da8a8a7e79c981")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wav>)))
  "Returns full string definition for message of type '<Wav>"
  (cl:format cl:nil "int32 fs~%float32[] chl~%float32[] chr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wav)))
  "Returns full string definition for message of type 'Wav"
  (cl:format cl:nil "int32 fs~%float32[] chl~%float32[] chr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wav>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'chl) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'chr) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wav>))
  "Converts a ROS message object to a list"
  (cl:list 'Wav
    (cl:cons ':fs (fs msg))
    (cl:cons ':chl (chl msg))
    (cl:cons ':chr (chr msg))
))
