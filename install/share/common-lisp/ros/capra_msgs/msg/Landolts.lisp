; Auto-generated. Do not edit!


(cl:in-package capra_msgs-msg)


;//! \htmlinclude Landolts.msg.html

(cl:defclass <Landolts> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (image_header
    :reader image_header
    :initarg :image_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gaps
    :reader gaps
    :initarg :gaps
    :type (cl:vector capra_msgs-msg:LandoltGap)
   :initform (cl:make-array 0 :element-type 'capra_msgs-msg:LandoltGap :initial-element (cl:make-instance 'capra_msgs-msg:LandoltGap))))
)

(cl:defclass Landolts (<Landolts>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Landolts>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Landolts)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name capra_msgs-msg:<Landolts> is deprecated: use capra_msgs-msg:Landolts instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Landolts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capra_msgs-msg:header-val is deprecated.  Use capra_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'image_header-val :lambda-list '(m))
(cl:defmethod image_header-val ((m <Landolts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capra_msgs-msg:image_header-val is deprecated.  Use capra_msgs-msg:image_header instead.")
  (image_header m))

(cl:ensure-generic-function 'gaps-val :lambda-list '(m))
(cl:defmethod gaps-val ((m <Landolts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader capra_msgs-msg:gaps-val is deprecated.  Use capra_msgs-msg:gaps instead.")
  (gaps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Landolts>) ostream)
  "Serializes a message object of type '<Landolts>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'gaps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'gaps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Landolts>) istream)
  "Deserializes a message object of type '<Landolts>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'gaps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'gaps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'capra_msgs-msg:LandoltGap))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Landolts>)))
  "Returns string type for a message object of type '<Landolts>"
  "capra_msgs/Landolts")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Landolts)))
  "Returns string type for a message object of type 'Landolts"
  "capra_msgs/Landolts")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Landolts>)))
  "Returns md5sum for a message object of type '<Landolts>"
  "c4d34173e5d16e0e6f807e704e0367f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Landolts)))
  "Returns md5sum for a message object of type 'Landolts"
  "c4d34173e5d16e0e6f807e704e0367f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Landolts>)))
  "Returns full string definition for message of type '<Landolts>"
  (cl:format cl:nil "Header header~%Header image_header~%LandoltGap[] gaps~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: capra_msgs/LandoltGap~%BoundingCircle gap~%float64 angle~%================================================================================~%MSG: capra_msgs/BoundingCircle~%int64 xcenter~%int64 ycenter~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Landolts)))
  "Returns full string definition for message of type 'Landolts"
  (cl:format cl:nil "Header header~%Header image_header~%LandoltGap[] gaps~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: capra_msgs/LandoltGap~%BoundingCircle gap~%float64 angle~%================================================================================~%MSG: capra_msgs/BoundingCircle~%int64 xcenter~%int64 ycenter~%float64 radius~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Landolts>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gaps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Landolts>))
  "Converts a ROS message object to a list"
  (cl:list 'Landolts
    (cl:cons ':header (header msg))
    (cl:cons ':image_header (image_header msg))
    (cl:cons ':gaps (gaps msg))
))
