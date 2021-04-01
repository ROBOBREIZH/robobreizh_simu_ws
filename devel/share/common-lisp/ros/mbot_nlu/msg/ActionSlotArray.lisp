; Auto-generated. Do not edit!


(cl:in-package mbot_nlu-msg)


;//! \htmlinclude ActionSlotArray.msg.html

(cl:defclass <ActionSlotArray> (roslisp-msg-protocol:ros-message)
  ((sentence_recognition
    :reader sentence_recognition
    :initarg :sentence_recognition
    :type (cl:vector mbot_nlu-msg:ActionSlot)
   :initform (cl:make-array 0 :element-type 'mbot_nlu-msg:ActionSlot :initial-element (cl:make-instance 'mbot_nlu-msg:ActionSlot))))
)

(cl:defclass ActionSlotArray (<ActionSlotArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionSlotArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionSlotArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mbot_nlu-msg:<ActionSlotArray> is deprecated: use mbot_nlu-msg:ActionSlotArray instead.")))

(cl:ensure-generic-function 'sentence_recognition-val :lambda-list '(m))
(cl:defmethod sentence_recognition-val ((m <ActionSlotArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mbot_nlu-msg:sentence_recognition-val is deprecated.  Use mbot_nlu-msg:sentence_recognition instead.")
  (sentence_recognition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionSlotArray>) ostream)
  "Serializes a message object of type '<ActionSlotArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sentence_recognition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sentence_recognition))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionSlotArray>) istream)
  "Deserializes a message object of type '<ActionSlotArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sentence_recognition) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sentence_recognition)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mbot_nlu-msg:ActionSlot))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionSlotArray>)))
  "Returns string type for a message object of type '<ActionSlotArray>"
  "mbot_nlu/ActionSlotArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionSlotArray)))
  "Returns string type for a message object of type 'ActionSlotArray"
  "mbot_nlu/ActionSlotArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionSlotArray>)))
  "Returns md5sum for a message object of type '<ActionSlotArray>"
  "5ac2cee11a45480fcd32ce9716a74e6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionSlotArray)))
  "Returns md5sum for a message object of type 'ActionSlotArray"
  "5ac2cee11a45480fcd32ce9716a74e6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionSlotArray>)))
  "Returns full string definition for message of type '<ActionSlotArray>"
  (cl:format cl:nil "# a sentence gets divided into phrases and for each~%# phrase you get an intention and arguments, therefore~%# in the case of having one phrase to recognize the lenght~%# of this array should be 1~%ActionSlot[] sentence_recognition~%~%================================================================================~%MSG: mbot_nlu/ActionSlot~%string intention~%Slot[] slots~%~%================================================================================~%MSG: mbot_nlu/Slot~%string type~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionSlotArray)))
  "Returns full string definition for message of type 'ActionSlotArray"
  (cl:format cl:nil "# a sentence gets divided into phrases and for each~%# phrase you get an intention and arguments, therefore~%# in the case of having one phrase to recognize the lenght~%# of this array should be 1~%ActionSlot[] sentence_recognition~%~%================================================================================~%MSG: mbot_nlu/ActionSlot~%string intention~%Slot[] slots~%~%================================================================================~%MSG: mbot_nlu/Slot~%string type~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionSlotArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sentence_recognition) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionSlotArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionSlotArray
    (cl:cons ':sentence_recognition (sentence_recognition msg))
))
