; Auto-generated. Do not edit!


(cl:in-package capra_msgs-msg)


;//! \htmlinclude BoundingCircle.msg.html

(cl:defclass <BoundingCircle> (roslisp-msg-protocol:ros-message)
  ((xcenter
    :reader xcenter
    :initarg :xcenter
    :type cl:integer
    :initform 0)
   (ycenter
    :reader ycenter
    :initarg :ycenter
    :type cl:integer
    :initform 0)
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0))
)

(cl:defclass BoundingCircle (<BoundingCircle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoundingCircle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoundingCircle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capra_msgs-msg:<BoundingCircle> is deprecated: use capra_msgs-msg:BoundingCircle instead.")))

(cl:ensure-generic-function 'xcenter-val :lambda-list '(m))
(cl:defmethod xcenter-val ((m <BoundingCircle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capra_msgs-msg:xcenter-val is deprecated.  Use capra_msgs-msg:xcenter instead.")
  (xcenter m))

(cl:ensure-generic-function 'ycenter-val :lambda-list '(m))
(cl:defmethod ycenter-val ((m <BoundingCircle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capra_msgs-msg:ycenter-val is deprecated.  Use capra_msgs-msg:ycenter instead.")
  (ycenter m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <BoundingCircle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capra_msgs-msg:radius-val is deprecated.  Use capra_msgs-msg:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoundingCircle>) ostream)
  "Serializes a message object of type '<BoundingCircle>"
  (cl:let* ((signed (cl:slot-value msg 'xcenter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ycenter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoundingCircle>) istream)
  "Deserializes a message object of type '<BoundingCircle>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'xcenter) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ycenter) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoundingCircle>)))
  "Returns string type for a message object of type '<BoundingCircle>"
  "capra_msgs/BoundingCircle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoundingCircle)))
  "Returns string type for a message object of type 'BoundingCircle"
  "capra_msgs/BoundingCircle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoundingCircle>)))
  "Returns md5sum for a message object of type '<BoundingCircle>"
  "8a1ed972b142aeae81d6cad44d62a9b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoundingCircle)))
  "Returns md5sum for a message object of type 'BoundingCircle"
  "8a1ed972b142aeae81d6cad44d62a9b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoundingCircle>)))
  "Returns full string definition for message of type '<BoundingCircle>"
  (cl:format cl:nil "int64 xcenter~%int64 ycenter~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoundingCircle)))
  "Returns full string definition for message of type 'BoundingCircle"
  (cl:format cl:nil "int64 xcenter~%int64 ycenter~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoundingCircle>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoundingCircle>))
  "Converts a ROS message object to a list"
  (cl:list 'BoundingCircle
    (cl:cons ':xcenter (xcenter msg))
    (cl:cons ':ycenter (ycenter msg))
    (cl:cons ':radius (radius msg))
))
