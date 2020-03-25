
(cl:in-package :asdf)

(defsystem "custom_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Crop" :depends-on ("_package_Crop"))
    (:file "_package_Crop" :depends-on ("_package"))
    (:file "CropList" :depends-on ("_package_CropList"))
    (:file "_package_CropList" :depends-on ("_package"))
  ))