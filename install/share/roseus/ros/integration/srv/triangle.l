;; Auto-generated. Do not edit!


(when (boundp 'integration::triangle)
  (if (not (find-package "INTEGRATION"))
    (make-package "INTEGRATION"))
  (shadow 'triangle (find-package "INTEGRATION")))
(unless (find-package "INTEGRATION::TRIANGLE")
  (make-package "INTEGRATION::TRIANGLE"))
(unless (find-package "INTEGRATION::TRIANGLEREQUEST")
  (make-package "INTEGRATION::TRIANGLEREQUEST"))
(unless (find-package "INTEGRATION::TRIANGLERESPONSE")
  (make-package "INTEGRATION::TRIANGLERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass integration::triangleRequest
  :super ros::object
  :slots (_p1 _p2 _p3 ))

(defmethod integration::triangleRequest
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

(defclass integration::triangleResponse
  :super ros::object
  :slots (_aire ))

(defmethod integration::triangleResponse
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

(defclass integration::triangle
  :super ros::object
  :slots ())

(setf (get integration::triangle :md5sum-) "4e625ac4adc31256378a5e593887ac09")
(setf (get integration::triangle :datatype-) "integration/triangle")
(setf (get integration::triangle :request) integration::triangleRequest)
(setf (get integration::triangle :response) integration::triangleResponse)

(defmethod integration::triangleRequest
  (:response () (instance integration::triangleResponse :init)))

(setf (get integration::triangleRequest :md5sum-) "4e625ac4adc31256378a5e593887ac09")
(setf (get integration::triangleRequest :datatype-) "integration/triangleRequest")
(setf (get integration::triangleRequest :definition-)
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

(setf (get integration::triangleResponse :md5sum-) "4e625ac4adc31256378a5e593887ac09")
(setf (get integration::triangleResponse :datatype-) "integration/triangleResponse")
(setf (get integration::triangleResponse :definition-)
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



(provide :integration/triangle "4e625ac4adc31256378a5e593887ac09")


