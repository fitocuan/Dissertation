// Generated by gencpp from file zed_wrapper/stop_3d_mappingResponse.msg
// DO NOT EDIT!


#ifndef ZED_WRAPPER_MESSAGE_STOP_3D_MAPPINGRESPONSE_H
#define ZED_WRAPPER_MESSAGE_STOP_3D_MAPPINGRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace zed_wrapper
{
template <class ContainerAllocator>
struct stop_3d_mappingResponse_
{
  typedef stop_3d_mappingResponse_<ContainerAllocator> Type;

  stop_3d_mappingResponse_()
    : done(false)  {
    }
  stop_3d_mappingResponse_(const ContainerAllocator& _alloc)
    : done(false)  {
  (void)_alloc;
    }



   typedef uint8_t _done_type;
  _done_type done;





  typedef boost::shared_ptr< ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator> const> ConstPtr;

}; // struct stop_3d_mappingResponse_

typedef ::zed_wrapper::stop_3d_mappingResponse_<std::allocator<void> > stop_3d_mappingResponse;

typedef boost::shared_ptr< ::zed_wrapper::stop_3d_mappingResponse > stop_3d_mappingResponsePtr;
typedef boost::shared_ptr< ::zed_wrapper::stop_3d_mappingResponse const> stop_3d_mappingResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace zed_wrapper

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'zed_wrapper': ['/home/fitocuan/essex_ws/src/zed-ros-wrapper/zed_wrapper/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "89bb254424e4cffedbf494e7b0ddbfea";
  }

  static const char* value(const ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x89bb254424e4cffeULL;
  static const uint64_t static_value2 = 0xdbf494e7b0ddbfeaULL;
};

template<class ContainerAllocator>
struct DataType< ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "zed_wrapper/stop_3d_mappingResponse";
  }

  static const char* value(const ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool done\n\
\n\
";
  }

  static const char* value(const ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.done);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct stop_3d_mappingResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::zed_wrapper::stop_3d_mappingResponse_<ContainerAllocator>& v)
  {
    s << indent << "done: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.done);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ZED_WRAPPER_MESSAGE_STOP_3D_MAPPINGRESPONSE_H
