
(cl:in-package :asdf)

(defsystem "integration-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "triangle" :depends-on ("_package_triangle"))
    (:file "_package_triangle" :depends-on ("_package"))
  ))