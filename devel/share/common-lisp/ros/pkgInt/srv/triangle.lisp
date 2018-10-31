; Auto-generated. Do not edit!


(cl:in-package pkgInt-srv)


;//! \htmlinclude triangle-request.msg.html

(cl:defclass <triangle-request> (roslisp-msg-protocol:ros-message)
  ((p1
    :reader p1
    :initarg :p1
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (p2
    :reader p2
    :initarg :p2
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (p3
    :reader p3
    :initarg :p3
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass triangle-request (<triangle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <triangle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'triangle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkgInt-srv:<triangle-request> is deprecated: use pkgInt-srv:triangle-request instead.")))

(cl:ensure-generic-function 'p1-val :lambda-list '(m))
(cl:defmethod p1-val ((m <triangle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkgInt-srv:p1-val is deprecated.  Use pkgInt-srv:p1 instead.")
  (p1 m))

(cl:ensure-generic-function 'p2-val :lambda-list '(m))
(cl:defmethod p2-val ((m <triangle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkgInt-srv:p2-val is deprecated.  Use pkgInt-srv:p2 instead.")
  (p2 m))

(cl:ensure-generic-function 'p3-val :lambda-list '(m))
(cl:defmethod p3-val ((m <triangle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkgInt-srv:p3-val is deprecated.  Use pkgInt-srv:p3 instead.")
  (p3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <triangle-request>) ostream)
  "Serializes a message object of type '<triangle-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p3) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <triangle-request>) istream)
  "Deserializes a message object of type '<triangle-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p3) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<triangle-request>)))
  "Returns string type for a service object of type '<triangle-request>"
  "pkgInt/triangleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'triangle-request)))
  "Returns string type for a service object of type 'triangle-request"
  "pkgInt/triangleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<triangle-request>)))
  "Returns md5sum for a message object of type '<triangle-request>"
  "4e625ac4adc31256378a5e593887ac09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'triangle-request)))
  "Returns md5sum for a message object of type 'triangle-request"
  "4e625ac4adc31256378a5e593887ac09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<triangle-request>)))
  "Returns full string definition for message of type '<triangle-request>"
  (cl:format cl:nil "geometry_msgs/Point p1~%geometry_msgs/Point p2~%geometry_msgs/Point p3~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'triangle-request)))
  "Returns full string definition for message of type 'triangle-request"
  (cl:format cl:nil "geometry_msgs/Point p1~%geometry_msgs/Point p2~%geometry_msgs/Point p3~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <triangle-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p3))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <triangle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'triangle-request
    (cl:cons ':p1 (p1 msg))
    (cl:cons ':p2 (p2 msg))
    (cl:cons ':p3 (p3 msg))
))
;//! \htmlinclude triangle-response.msg.html

(cl:defclass <triangle-response> (roslisp-msg-protocol:ros-message)
  ((aire
    :reader aire
    :initarg :aire
    :type cl:float
    :initform 0.0))
)

(cl:defclass triangle-response (<triangle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <triangle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'triangle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkgInt-srv:<triangle-response> is deprecated: use pkgInt-srv:triangle-response instead.")))

(cl:ensure-generic-function 'aire-val :lambda-list '(m))
(cl:defmethod aire-val ((m <triangle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkgInt-srv:aire-val is deprecated.  Use pkgInt-srv:aire instead.")
  (aire m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <triangle-response>) ostream)
  "Serializes a message object of type '<triangle-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'aire))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <triangle-response>) istream)
  "Deserializes a message object of type '<triangle-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aire) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<triangle-response>)))
  "Returns string type for a service object of type '<triangle-response>"
  "pkgInt/triangleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'triangle-response)))
  "Returns string type for a service object of type 'triangle-response"
  "pkgInt/triangleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<triangle-response>)))
  "Returns md5sum for a message object of type '<triangle-response>"
  "4e625ac4adc31256378a5e593887ac09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'triangle-response)))
  "Returns md5sum for a message object of type 'triangle-response"
  "4e625ac4adc31256378a5e593887ac09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<triangle-response>)))
  "Returns full string definition for message of type '<triangle-response>"
  (cl:format cl:nil "float64 aire~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'triangle-response)))
  "Returns full string definition for message of type 'triangle-response"
  (cl:format cl:nil "float64 aire~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <triangle-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <triangle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'triangle-response
    (cl:cons ':aire (aire msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'triangle)))
  'triangle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'triangle)))
  'triangle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'triangle)))
  "Returns string type for a service object of type '<triangle>"
  "pkgInt/triangle")