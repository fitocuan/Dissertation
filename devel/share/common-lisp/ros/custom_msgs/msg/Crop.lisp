; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude Crop.msg.html

(cl:defclass <Crop> (roslisp-msg-protocol:ros-message)
  ((coor
    :reader coor
    :initarg :coor
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32)))
)

(cl:defclass Crop (<Crop>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Crop>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Crop)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<Crop> is deprecated: use custom_msgs-msg:Crop instead.")))

(cl:ensure-generic-function 'coor-val :lambda-list '(m))
(cl:defmethod coor-val ((m <Crop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:coor-val is deprecated.  Use custom_msgs-msg:coor instead.")
  (coor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Crop>) ostream)
  "Serializes a message object of type '<Crop>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'coor) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Crop>) istream)
  "Deserializes a message object of type '<Crop>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'coor) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Crop>)))
  "Returns string type for a message object of type '<Crop>"
  "custom_msgs/Crop")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Crop)))
  "Returns string type for a message object of type 'Crop"
  "custom_msgs/Crop")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Crop>)))
  "Returns md5sum for a message object of type '<Crop>"
  "1ae4fbb051147f5f402f6e725ce66bb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Crop)))
  "Returns md5sum for a message object of type 'Crop"
  "1ae4fbb051147f5f402f6e725ce66bb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Crop>)))
  "Returns full string definition for message of type '<Crop>"
  (cl:format cl:nil "geometry_msgs/Point32 coor~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Crop)))
  "Returns full string definition for message of type 'Crop"
  (cl:format cl:nil "geometry_msgs/Point32 coor~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Crop>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'coor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Crop>))
  "Converts a ROS message object to a list"
  (cl:list 'Crop
    (cl:cons ':coor (coor msg))
))
