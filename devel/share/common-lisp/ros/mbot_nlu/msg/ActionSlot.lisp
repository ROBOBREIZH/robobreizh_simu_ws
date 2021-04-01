; Auto-generated. Do not edit!


(cl:in-package mbot_nlu-msg)


;//! \htmlinclude ActionSlot.msg.html

(cl:defclass <ActionSlot> (roslisp-msg-protocol:ros-message)
  ((intention
    :reader intention
    :initarg :intention
    :type cl:string
    :initform "")
   (slots
    :reader slots
    :initarg :slots
    :type (cl:vector mbot_nlu-msg:Slot)
   :initform (cl:make-array 0 :element-type 'mbot_nlu-msg:Slot :initial-element (cl:make-instance 'mbot_nlu-msg:Slot))))
)

(cl:defclass ActionSlot (<ActionSlot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionSlot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionSlot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mbot_nlu-msg:<ActionSlot> is deprecated: use mbot_nlu-msg:ActionSlot instead.")))

(cl:ensure-generic-function 'intention-val :lambda-list '(m))
(cl:defmethod intention-val ((m <ActionSlot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbot_nlu-msg:intention-val is deprecated.  Use mbot_nlu-msg:intention instead.")
  (intention m))

(cl:ensure-generic-function 'slots-val :lambda-list '(m))
(cl:defmethod slots-val ((m <ActionSlot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbot_nlu-msg:slots-val is deprecated.  Use mbot_nlu-msg:slots instead.")
  (slots m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionSlot>) ostream)
  "Serializes a message object of type '<ActionSlot>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'intention))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'intention))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'slots))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'slots))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionSlot>) istream)
  "Deserializes a message object of type '<ActionSlot>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'intention) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'intention) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'slots) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'slots)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mbot_nlu-msg:Slot))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionSlot>)))
  "Returns string type for a message object of type '<ActionSlot>"
  "mbot_nlu/ActionSlot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionSlot)))
  "Returns string type for a message object of type 'ActionSlot"
  "mbot_nlu/ActionSlot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionSlot>)))
  "Returns md5sum for a message object of type '<ActionSlot>"
  "95d873f61ab7124887d29a04f0f7906c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionSlot)))
  "Returns md5sum for a message object of type 'ActionSlot"
  "95d873f61ab7124887d29a04f0f7906c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionSlot>)))
  "Returns full string definition for message of type '<ActionSlot>"
  (cl:format cl:nil "string intention~%Slot[] slots~%~%================================================================================~%MSG: mbot_nlu/Slot~%string type~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionSlot)))
  "Returns full string definition for message of type 'ActionSlot"
  (cl:format cl:nil "string intention~%Slot[] slots~%~%================================================================================~%MSG: mbot_nlu/Slot~%string type~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionSlot>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'intention))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'slots) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionSlot>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionSlot
    (cl:cons ':intention (intention msg))
    (cl:cons ':slots (slots msg))
))
