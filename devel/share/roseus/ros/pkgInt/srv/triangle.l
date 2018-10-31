;; Auto-generated. Do not edit!


(when (boundp 'pkgInt::triangle)
  (if (not (find-package "PKGINT"))
    (make-package "PKGINT"))
  (shadow 'triangle (find-package "PKGINT")))
(unless (find-package "PKGINT::TRIANGLE")
  (make-package "PKGINT::TRIANGLE"))
(unless (find-package "PKGINT::TRIANGLEREQUEST")
  (make-package "PKGINT::TRIANGLEREQUEST"))
(unless (find-package "PKGINT::TRIANGLERESPONSE")
  (make-package "PKGINT::TRIANGLERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass pkgInt::triangleRequest
  :super ros::object
  :slots (_p1 _p2 _p3 ))

(defmethod pkgInt::triangleRequest
  (:init
   (&key
    ((:p1 __p1) (instance geometry_msgs::Point :init))
    ((:p2 __p2) (instance geometry_msgs::Point :init))
    ((:p3 __p3) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _p1 __p1)
   (setq _p2 __p2)
   (setq _p3 __p3)
   self)
  (:p1
   (&rest __p1)
   (if (keywordp (car __p1))
       (send* _p1 __p1)
     (progn
       (if __p1 (setq _p1 (car __p1)))
       _p1)))
  (:p2
   (&rest __p2)
   (if (keywordp (car __p2))
       (send* _p2 __p2)
     (progn
       (if __p2 (setq _p2 (car __p2)))
       _p2)))
  (:p3
   (&rest __p3)
   (if (keywordp (car __p3))
       (send* _p3 __p3)
     (progn
       (if __p3 (setq _p3 (car __p3)))
       _p3)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _p1
    (send _p1 :serialization-length)
    ;; geometry_msgs/Point _p2
    (send _p2 :serialization-length)
    ;; geometry_msgs/Point _p3
    (send _p3 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _p1
       (send _p1 :serialize s)
     ;; geometry_msgs/Point _p2
       (send _p2 :serialize s)
     ;; geometry_msgs/Point _p3
       (send _p3 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _p1
     (send _p1 :deserialize buf ptr-) (incf ptr- (send _p1 :serialization-length))
   ;; geometry_msgs/Point _p2
     (send _p2 :deserialize buf ptr-) (incf ptr- (send _p2 :serialization-length))
   ;; geometry_msgs/Point _p3
     (send _p3 :deserialize buf ptr-) (incf ptr- (send _p3 :serialization-length))
   ;;
   self)
  )

(defclass pkgInt::triangleResponse
  :super ros::object
  :slots (_aire ))

(defmethod pkgInt::triangleResponse
  (:init
   (&key
    ((:aire __aire) 0.0)
    )
   (send-super :init)
   (setq _aire (float __aire))
   self)
  (:aire
   (&optional __aire)
   (if __aire (setq _aire __aire)) _aire)
  (:serialization-length
   ()
   (+
    ;; float64 _aire
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _aire
       (sys::poke _aire (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _aire
     (setq _aire (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass pkgInt::triangle
  :super ros::object
  :slots ())

(setf (get pkgInt::triangle :md5sum-) "4e625ac4adc31256378a5e593887ac09")
(setf (get pkgInt::triangle :datatype-) "pkgInt/triangle")
(setf (get pkgInt::triangle :request) pkgInt::triangleRequest)
(setf (get pkgInt::triangle :response) pkgInt::triangleResponse)

(defmethod pkgInt::triangleRequest
  (:response () (instance pkgInt::triangleResponse :init)))

(setf (get pkgInt::triangleRequest :md5sum-) "4e625ac4adc31256378a5e593887ac09")
(setf (get pkgInt::triangleRequest :datatype-) "pkgInt/triangleRequest")
(setf (get pkgInt::triangleRequest :definition-)
      "geometry_msgs/Point p1
geometry_msgs/Point p2
geometry_msgs/Point p3

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
float64 aire

")

(setf (get pkgInt::triangleResponse :md5sum-) "4e625ac4adc31256378a5e593887ac09")
(setf (get pkgInt::triangleResponse :datatype-) "pkgInt/triangleResponse")
(setf (get pkgInt::triangleResponse :definition-)
      "geometry_msgs/Point p1
geometry_msgs/Point p2
geometry_msgs/Point p3

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
float64 aire

")



(provide :pkgInt/triangle "4e625ac4adc31256378a5e593887ac09")


