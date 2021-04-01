
(cl:in-package :asdf)

(defsystem "dialog-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "File" :depends-on ("_package_File"))
    (:file "_package_File" :depends-on ("_package"))
    (:file "T2S" :depends-on ("_package_T2S"))
    (:file "_package_T2S" :depends-on ("_package"))
    (:file "Wav" :depends-on ("_package_Wav"))
    (:file "_package_Wav" :depends-on ("_package"))
  ))