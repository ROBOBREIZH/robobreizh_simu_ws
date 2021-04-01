
(cl:in-package :asdf)

(defsystem "dialog-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "listen" :depends-on ("_package_listen"))
    (:file "_package_listen" :depends-on ("_package"))
    (:file "speak" :depends-on ("_package_speak"))
    (:file "_package_speak" :depends-on ("_package"))
  ))