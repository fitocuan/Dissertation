;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::Crop)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'Crop (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::CROP")
  (make-package "CUSTOM_MSGS::CROP"))

(in-package "ROS")
;;//! \htmlinclude Crop.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass custom_msgs::Crop
  :super ros::object
  :slots (_coor ))

(defmethod custom_msgs::Crop
  (:init
   (&key
    ((:coor __coor) (instance geometry_msgs::Point32 :init))
    )
   (send-super :init)
   (setq _coor __coor)
   self)
  (:coor
   (&rest __coor)
   (if (keywordp (car __coor))
       (send* _coor __coor)
     (progn
       (if __coor (setq _coor (car __coor)))
       _coor)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point32 _coor
    (send _coor :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point32 _coor
       (send _coor :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point32 _coor
     (send _coor :deserialize buf ptr-) (incf ptr- (send _coor :serialization-length))
   ;;
   self)
  )

(setf (get custom_msgs::Crop :md5sum-) "1ae4fbb051147f5f402f6e725ce66bb2")
(setf (get custom_msgs::Crop :datatype-) "custom_msgs/Crop")
(setf (get custom_msgs::Crop :definition-)
      "geometry_msgs/Point32 coor

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :custom_msgs/Crop "1ae4fbb051147f5f402f6e725ce66bb2")


