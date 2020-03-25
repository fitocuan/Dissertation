; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude CropList.msg.html

(cl:defclass <CropList> (roslisp-msg-protocol:ros-message)
  ((size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector custom_msgs-msg:Crop)
   :initform (cl:make-array 0 :element-type 'custom_msgs-msg:Crop :initial-element (cl:make-instance 'custom_msgs-msg:Crop))))
)

(cl:defclass CropList (<CropList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CropList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CropList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<CropList> is deprecated: use custom_msgs-msg:CropList instead.")))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <CropList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:size-val is deprecated.  Use custom_msgs-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <CropList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:data-val is deprecated.  Use custom_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CropList>) ostream)
  "Serializes a message object of type '<CropList>"
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CropList>) istream)
  "Deserializes a message object of type '<CropList>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'custom_msgs-msg:Crop))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CropList>)))
  "Returns string type for a message object of type '<CropList>"
  "custom_msgs/CropList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CropList)))
  "Returns string type for a message object of type 'CropList"
  "custom_msgs/CropList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CropList>)))
  "Returns md5sum for a message object of type '<CropList>"
  "d586f724d05e2e00f68131d048622687")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CropList)))
  "Returns md5sum for a message object of type 'CropList"
  "d586f724d05e2e00f68131d048622687")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CropList>)))
  "Returns full string definition for message of type '<CropList>"
  (cl:format cl:nil "int32 size~%Crop[] data~%================================================================================~%MSG: custom_msgs/Crop~%geometry_msgs/Point32 coor~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CropList)))
  "Returns full string definition for message of type 'CropList"
  (cl:format cl:nil "int32 size~%Crop[] data~%================================================================================~%MSG: custom_msgs/Crop~%geometry_msgs/Point32 coor~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CropList>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CropList>))
  "Converts a ROS message object to a list"
  (cl:list 'CropList
    (cl:cons ':size (size msg))
    (cl:cons ':data (data msg))
))
