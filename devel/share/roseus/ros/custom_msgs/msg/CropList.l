;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::CropList)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'CropList (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::CROPLIST")
  (make-package "CUSTOM_MSGS::CROPLIST"))

(in-package "ROS")
;;//! \htmlinclude CropList.msg.html


(defclass custom_msgs::CropList
  :super ros::object
  :slots (_size _data ))

(defmethod custom_msgs::CropList
  (:init
   (&key
    ((:size __size) 0)
    ((:data __data) (let (r) (dotimes (i 0) (push (instance custom_msgs::Crop :init) r)) r))
    )
   (send-super :init)
   (setq _size (round __size))
   (setq _data __data)
   self)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; int32 _size
    4
    ;; custom_msgs/Crop[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _size
       (write-long _size s)
     ;; custom_msgs/Crop[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; custom_msgs/Crop[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance custom_msgs::Crop :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get custom_msgs::CropList :md5sum-) "d586f724d05e2e00f68131d048622687")
(setf (get custom_msgs::CropList :datatype-) "custom_msgs/CropList")
(setf (get custom_msgs::CropList :definition-)
      "int32 size
Crop[] data
================================================================================
MSG: custom_msgs/Crop
geometry_msgs/Point32 coor

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



(provide :custom_msgs/CropList "d586f724d05e2e00f68131d048622687")


