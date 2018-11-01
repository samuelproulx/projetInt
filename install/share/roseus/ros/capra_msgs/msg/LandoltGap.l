;; Auto-generated. Do not edit!


(when (boundp 'capra_msgs::LandoltGap)
  (if (not (find-package "CAPRA_MSGS"))
    (make-package "CAPRA_MSGS"))
  (shadow 'LandoltGap (find-package "CAPRA_MSGS")))
(unless (find-package "CAPRA_MSGS::LANDOLTGAP")
  (make-package "CAPRA_MSGS::LANDOLTGAP"))

(in-package "ROS")
;;//! \htmlinclude LandoltGap.msg.html


(defclass capra_msgs::LandoltGap
  :super ros::object
  :slots (_gap _angle ))

(defmethod capra_msgs::LandoltGap
  (:init
   (&key
    ((:gap __gap) (instance capra_msgs::BoundingCircle :init))
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _gap __gap)
   (setq _angle (float __angle))
   self)
  (:gap
   (&rest __gap)
   (if (keywordp (car __gap))
       (send* _gap __gap)
     (progn
       (if __gap (setq _gap (car __gap)))
       _gap)))
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; capra_msgs/BoundingCircle _gap
    (send _gap :serialization-length)
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; capra_msgs/BoundingCircle _gap
       (send _gap :serialize s)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; capra_msgs/BoundingCircle _gap
     (send _gap :deserialize buf ptr-) (incf ptr- (send _gap :serialization-length))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get capra_msgs::LandoltGap :md5sum-) "e42544d4bf49c88860dcd0d93bd66c45")
(setf (get capra_msgs::LandoltGap :datatype-) "capra_msgs/LandoltGap")
(setf (get capra_msgs::LandoltGap :definition-)
      "BoundingCircle gap
float64 angle
================================================================================
MSG: capra_msgs/BoundingCircle
int64 xcenter
int64 ycenter
float64 radius
")



(provide :capra_msgs/LandoltGap "e42544d4bf49c88860dcd0d93bd66c45")


