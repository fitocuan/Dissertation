// Generated by gencpp from file custom_msgs/Crop.msg
// DO NOT EDIT!


#ifndef CUSTOM_MSGS_MESSAGE_CROP_H
#define CUSTOM_MSGS_MESSAGE_CROP_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point32.h>

namespace custom_msgs
{
template <class ContainerAllocator>
struct Crop_
{
  typedef Crop_<ContainerAllocator> Type;

  Crop_()
    : coor()  {
    }
  Crop_(const ContainerAllocator& _alloc)
    : coor(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point32_<ContainerAllocator>  _coor_type;
  _coor_type coor;





  typedef boost::shared_ptr< ::custom_msgs::Crop_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::custom_msgs::Crop_<ContainerAllocator> const> ConstPtr;

}; // struct Crop_

typedef ::custom_msgs::Crop_<std::allocator<void> > Crop;

typedef boost::shared_ptr< ::custom_msgs::Crop > CropPtr;
typedef boost::shared_ptr< ::custom_msgs::Crop const> CropConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::custom_msgs::Crop_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::custom_msgs::Crop_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace custom_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'custom_msgs': ['/home/fitocuan/essex_ws/src/custom_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::custom_msgs::Crop_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::custom_msgs::Crop_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::Crop_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::custom_msgs::Crop_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::Crop_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::custom_msgs::Crop_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::custom_msgs::Crop_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1ae4fbb051147f5f402f6e725ce66bb2";
  }

  static const char* value(const ::custom_msgs::Crop_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1ae4fbb051147f5fULL;
  static const uint64_t static_value2 = 0x402f6e725ce66bb2ULL;
};

template<class ContainerAllocator>
struct DataType< ::custom_msgs::Crop_<ContainerAllocator> >
{
  static const char* value()
  {
    return "custom_msgs/Crop";
  }

  static const char* value(const ::custom_msgs::Crop_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::custom_msgs::Crop_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Point32 coor\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point32\n\
# This contains the position of a point in free space(with 32 bits of precision).\n\
# It is recommeded to use Point wherever possible instead of Point32.  \n\
# \n\
# This recommendation is to promote interoperability.  \n\
#\n\
# This message is designed to take up less space when sending\n\
# lots of points at once, as in the case of a PointCloud.  \n\
\n\
float32 x\n\
float32 y\n\
float32 z\n\
";
  }

  static const char* value(const ::custom_msgs::Crop_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::custom_msgs::Crop_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.coor);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Crop_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::custom_msgs::Crop_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::custom_msgs::Crop_<ContainerAllocator>& v)
  {
    s << indent << "coor: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point32_<ContainerAllocator> >::stream(s, indent + "  ", v.coor);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CUSTOM_MSGS_MESSAGE_CROP_H
