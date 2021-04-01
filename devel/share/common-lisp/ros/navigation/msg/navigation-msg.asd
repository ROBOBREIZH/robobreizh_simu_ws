
(cl:in-package :asdf)

(defsystem "navigation-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CurrentPos" :depends-on ("_package_CurrentPos"))
    (:file "_package_CurrentPos" :depends-on ("_package"))
  ))