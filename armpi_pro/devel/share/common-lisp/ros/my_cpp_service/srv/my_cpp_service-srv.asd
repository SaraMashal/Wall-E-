
(cl:in-package :asdf)

(defsystem "my_cpp_service-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SimpleService" :depends-on ("_package_SimpleService"))
    (:file "_package_SimpleService" :depends-on ("_package"))
  ))