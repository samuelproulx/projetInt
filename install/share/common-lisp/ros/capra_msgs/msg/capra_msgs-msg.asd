
(cl:in-package :asdf)

(defsystem "capra_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BoundingBox" :depends-on ("_package_BoundingBox"))
    (:file "_package_BoundingBox" :depends-on ("_package"))
    (:file "BoundingCircle" :depends-on ("_package_BoundingCircle"))
    (:file "_package_BoundingCircle" :depends-on ("_package"))
    (:file "LandoltGap" :depends-on ("_package_LandoltGap"))
    (:file "_package_LandoltGap" :depends-on ("_package"))
    (:file "Landolts" :depends-on ("_package_Landolts"))
    (:file "_package_Landolts" :depends-on ("_package"))
  ))