;; Auto-generated. Do not edit!


(when (boundp 'capra_msgs::BoundingCircle)
  (if (not (find-package "CAPRA_MSGS"))
    (make-package "CAPRA_MSGS"))
  (shadow 'BoundingCircle (find-package "CAPRA_MSGS")))
(unless (find-package "CAPRA_MSGS::BOUNDINGCIRCLE")
  (make-package "CAPRA_MSGS::BOUNDINGCIRCLE"))

(in-package "ROS")
;;//! \htmlinclude BoundingCircle.msg.html


(defclass capra_msgs::BoundingCircle
  :super ros::object
  :slots (_xcenter _ycenter _radius ))

(defmethod capra_msgs::BoundingCircle
  (:init
   (&key
    ((:xcenter __xcenter) 0)
    ((:ycenter __ycenter) 0)
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _xcenter (round __xcenter))
   (setq _ycenter (round __ycenter))
   (setq _radius (float __radius))
   self)
  (:xcenter
   (&optional __xcenter)
   (if __xcenter (setq _xcenter __xcenter)) _xcenter)
  (:ycenter
   (&optional __ycenter)
   (if __ycenter (setq _ycenter __ycenter)) _ycenter)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; int64 _xcenter
    8
    ;; int64 _ycenter
    8
    ;; float64 _radius
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _xcenter
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _xcenter (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _xcenter) (= (length (_xcenter . bv)) 2)) ;; bignum
              (write-long (ash (elt (_xcenter . bv) 0) 0) s)
              (write-long (ash (elt (_xcenter . bv) 1) -1) s))
             ((and (class _xcenter) (= (length (_xcenter . bv)) 1)) ;; big1
              (write-long (elt (_xcenter . bv) 0) s)
              (write-long (if (>= _xcenter 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _xcenter s)(write-long (if (>= _xcenter 0) 0 #xffffffff) s)))
     ;; int64 _ycenter
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ycenter (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ycenter) (= (length (_ycenter . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ycenter . bv) 0) 0) s)
              (write-long (ash (elt (_ycenter . bv) 1) -1) s))
             ((and (class _ycenter) (= (length (_ycenter . bv)) 1)) ;; big1
              (write-long (elt (_ycenter . bv) 0) s)
              (write-long (if (>= _ycenter 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ycenter s)(write-long (if (>= _ycenter 0) 0 #xffffffff) s)))
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _xcenter
#+(or :alpha :irix6 :x86_64)
      (setf _xcenter (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _xcenter (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _ycenter
#+(or :alpha :irix6 :x86_64)
      (setf _ycenter (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ycenter (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get capra_msgs::BoundingCircle :md5sum-) "8a1ed972b142aeae81d6cad44d62a9b7")
(setf (get capra_msgs::BoundingCircle :datatype-) "capra_msgs/BoundingCircle")
(setf (get capra_msgs::BoundingCircle :definition-)
      "int64 xcenter
int64 ycenter
float64 radius
")



(provide :capra_msgs/BoundingCircle "8a1ed972b142aeae81d6cad44d62a9b7")


