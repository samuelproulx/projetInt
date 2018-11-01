; Auto-generated. Do not edit!


(cl:in-package capra_msgs-msg)


;//! \htmlinclude LandoltGap.msg.html

(cl:defclass <LandoltGap> (roslisp-msg-protocol:ros-message)
  ((gap
    :reader gap
    :initarg :gap
    :type capra_msgs-msg:BoundingCircle
    :initform (cl:make-instance 'capra_msgs-msg:BoundingCircle))
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass LandoltGap (<LandoltGap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LandoltGap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LandoltGap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capra_msgs-msg:<LandoltGap> is deprecated: use capra_msgs-msg:LandoltGap instead.")))

(cl:ensure-generic-function 'gap-val :lambda-list '(m))
(cl:defmethod gap-val ((m <LandoltGap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capra_msgs-msg:gap-val is deprecated.  Use capra_msgs-msg:gap instead.")
  (gap m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <LandoltGap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capra_msgs-msg:angle-val is deprecated.  Use capra_msgs-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LandoltGap>) ostream)
  "Serializes a message object of type '<LandoltGap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gap) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LandoltGap>) istream)
  "Deserializes a message object of type '<LandoltGap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gap) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LandoltGap>)))
  "Returns string type for a message object of type '<LandoltGap>"
  "capra_msgs/LandoltGap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LandoltGap)))
  "Returns string type for a message object of type 'LandoltGap"
  "capra_msgs/LandoltGap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LandoltGap>)))
  "Returns md5sum for a message object of type '<LandoltGap>"
  "e42544d4bf49c88860dcd0d93bd66c45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LandoltGap)))
  "Returns md5sum for a message object of type 'LandoltGap"
  "e42544d4bf49c88860dcd0d93bd66c45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LandoltGap>)))
  "Returns full string definition for message of type '<LandoltGap>"
  (cl:format cl:nil "BoundingCircle gap~%float64 angle~%================================================================================~%MSG: capra_msgs/BoundingCircle~%int64 xcenter~%int64 ycenter~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LandoltGap)))
  "Returns full string definition for message of type 'LandoltGap"
  (cl:format cl:nil "BoundingCircle gap~%float64 angle~%================================================================================~%MSG: capra_msgs/BoundingCircle~%int64 xcenter~%int64 ycenter~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LandoltGap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gap))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LandoltGap>))
  "Converts a ROS message object to a list"
  (cl:list 'LandoltGap
    (cl:cons ':gap (gap msg))
    (cl:cons ':angle (angle msg))
))
