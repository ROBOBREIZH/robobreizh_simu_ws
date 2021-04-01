
(cl:in-package :asdf)

(defsystem "mbot_nlu-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ActionSlot" :depends-on ("_package_ActionSlot"))
    (:file "_package_ActionSlot" :depends-on ("_package"))
    (:file "ActionSlotArray" :depends-on ("_package_ActionSlotArray"))
    (:file "_package_ActionSlotArray" :depends-on ("_package"))
    (:file "Slot" :depends-on ("_package_Slot"))
    (:file "_package_Slot" :depends-on ("_package"))
  ))