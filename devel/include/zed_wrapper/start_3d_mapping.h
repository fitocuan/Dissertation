// Generated by gencpp from file zed_wrapper/start_3d_mapping.msg
// DO NOT EDIT!


#ifndef ZED_WRAPPER_MESSAGE_START_3D_MAPPING_H
#define ZED_WRAPPER_MESSAGE_START_3D_MAPPING_H

#include <ros/service_traits.h>


#include <zed_wrapper/start_3d_mappingRequest.h>
#include <zed_wrapper/start_3d_mappingResponse.h>


namespace zed_wrapper
{

struct start_3d_mapping
{

typedef start_3d_mappingRequest Request;
typedef start_3d_mappingResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct start_3d_mapping
} // namespace zed_wrapper


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::zed_wrapper::start_3d_mapping > {
  static const char* value()
  {
    return "3196af5ec088c6cf035e36ce85c17da0";
  }

  static const char* value(const ::zed_wrapper::start_3d_mapping&) { return value(); }
};

template<>
struct DataType< ::zed_wrapper::start_3d_mapping > {
  static const char* value()
  {
    return "zed_wrapper/start_3d_mapping";
  }

  static const char* value(const ::zed_wrapper::start_3d_mapping&) { return value(); }
};


// service_traits::MD5Sum< ::zed_wrapper::start_3d_mappingRequest> should match 
// service_traits::MD5Sum< ::zed_wrapper::start_3d_mapping > 
template<>
struct MD5Sum< ::zed_wrapper::start_3d_mappingRequest>
{
  static const char* value()
  {
    return MD5Sum< ::zed_wrapper::start_3d_mapping >::value();
  }
  static const char* value(const ::zed_wrapper::start_3d_mappingRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::zed_wrapper::start_3d_mappingRequest> should match 
// service_traits::DataType< ::zed_wrapper::start_3d_mapping > 
template<>
struct DataType< ::zed_wrapper::start_3d_mappingRequest>
{
  static const char* value()
  {
    return DataType< ::zed_wrapper::start_3d_mapping >::value();
  }
  static const char* value(const ::zed_wrapper::start_3d_mappingRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::zed_wrapper::start_3d_mappingResponse> should match 
// service_traits::MD5Sum< ::zed_wrapper::start_3d_mapping > 
template<>
struct MD5Sum< ::zed_wrapper::start_3d_mappingResponse>
{
  static const char* value()
  {
    return MD5Sum< ::zed_wrapper::start_3d_mapping >::value();
  }
  static const char* value(const ::zed_wrapper::start_3d_mappingResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::zed_wrapper::start_3d_mappingResponse> should match 
// service_traits::DataType< ::zed_wrapper::start_3d_mapping > 
template<>
struct DataType< ::zed_wrapper::start_3d_mappingResponse>
{
  static const char* value()
  {
    return DataType< ::zed_wrapper::start_3d_mapping >::value();
  }
  static const char* value(const ::zed_wrapper::start_3d_mappingResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ZED_WRAPPER_MESSAGE_START_3D_MAPPING_H
