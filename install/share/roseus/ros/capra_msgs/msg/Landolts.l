;; Auto-generated. Do not edit!


(when (boundp 'capra_msgs::Landolts)
  (if (not (find-package "CAPRA_MSGS"))
    (make-package "CAPRA_MSGS"))
  (shadow 'Landolts (find-package "CAPRA_MSGS")))
(unless (find-package "CAPRA_MSGS::LANDOLTS")
  (make-package "CAPRA_MSGS::LANDOLTS"))

(in-package "ROS")
;;//! \htmlinclude Landolts.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass capra_msgs::Landolts
  :super ros::object
  :slots (_header _image_header _gaps ))

(defmethod capra_msgs::Landolts
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:image_header __image_header) (instance std_msgs::Header :init))
    ((:gaps __gaps) (let (r) (dotimes (i 0) (push (instance capra_msgs::LandoltGap :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _image_header __image_header)
   (setq _gaps __gaps)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:image_header
   (&rest __image_header)
   (if (keywordp (car __image_header))
       (send* _image_header __image_header)
     (progn
       (if __image_header (setq _image_header (car __image_header)))
       _image_header)))
  (:gaps
   (&rest __gaps)
   (if (keywordp (car __gaps))
       (send* _gaps __gaps)
     (progn
       (if __gaps (setq _gaps (car __gaps)))
       _gaps)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Header _image_header
    (send _image_header :serialization-length)
    ;; capra_msgs/LandoltGap[] _gaps
    (apply #'+ (send-all _gaps :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Header _image_header
       (send _image_header :serialize s)
     ;; capra_msgs/LandoltGap[] _gaps
     (write-long (length _gaps) s)
     (dolist (elem _gaps)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Header _image_header
     (send _image_header :deserialize buf ptr-) (incf ptr- (send _image_header :serialization-length))
   ;; capra_msgs/LandoltGap[] _gaps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gaps (let (r) (dotimes (i n) (push (instance capra_msgs::LandoltGap :init) r)) r))
     (dolist (elem- _gaps)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get capra_msgs::Landolts :md5sum-) "c4d34173e5d16e0e6f807e704e0367f0")
(setf (get capra_msgs::Landolts :datatype-) "capra_msgs/Landolts")
(setf (get capra_msgs::Landolts :definition-)
      "Header header
Header image_header
LandoltGap[] gaps
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: capra_msgs/LandoltGap
BoundingCircle gap
float64 angle
================================================================================
MSG: capra_msgs/BoundingCircle
int64 xcenter
int64 ycenter
float64 radius
")



(provide :capra_msgs/Landolts "c4d34173e5d16e0e6f807e704e0367f0")


