// Generated by gencpp from file chassis_tracking/SetTarget.msg
// DO NOT EDIT!


#ifndef CHASSIS_TRACKING_MESSAGE_SETTARGET_H
#define CHASSIS_TRACKING_MESSAGE_SETTARGET_H

#include <ros/service_traits.h>


#include <chassis_tracking/SetTargetRequest.h>
#include <chassis_tracking/SetTargetResponse.h>


namespace chassis_tracking
{

struct SetTarget
{

typedef SetTargetRequest Request;
typedef SetTargetResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetTarget
} // namespace chassis_tracking


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::chassis_tracking::SetTarget > {
  static const char* value()
  {
    return "546971982e3fbbd5a41e60fb6432e357";
  }

  static const char* value(const ::chassis_tracking::SetTarget&) { return value(); }
};

template<>
struct DataType< ::chassis_tracking::SetTarget > {
  static const char* value()
  {
    return "chassis_tracking/SetTarget";
  }

  static const char* value(const ::chassis_tracking::SetTarget&) { return value(); }
};


// service_traits::MD5Sum< ::chassis_tracking::SetTargetRequest> should match
// service_traits::MD5Sum< ::chassis_tracking::SetTarget >
template<>
struct MD5Sum< ::chassis_tracking::SetTargetRequest>
{
  static const char* value()
  {
    return MD5Sum< ::chassis_tracking::SetTarget >::value();
  }
  static const char* value(const ::chassis_tracking::SetTargetRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::chassis_tracking::SetTargetRequest> should match
// service_traits::DataType< ::chassis_tracking::SetTarget >
template<>
struct DataType< ::chassis_tracking::SetTargetRequest>
{
  static const char* value()
  {
    return DataType< ::chassis_tracking::SetTarget >::value();
  }
  static const char* value(const ::chassis_tracking::SetTargetRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::chassis_tracking::SetTargetResponse> should match
// service_traits::MD5Sum< ::chassis_tracking::SetTarget >
template<>
struct MD5Sum< ::chassis_tracking::SetTargetResponse>
{
  static const char* value()
  {
    return MD5Sum< ::chassis_tracking::SetTarget >::value();
  }
  static const char* value(const ::chassis_tracking::SetTargetResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::chassis_tracking::SetTargetResponse> should match
// service_traits::DataType< ::chassis_tracking::SetTarget >
template<>
struct DataType< ::chassis_tracking::SetTargetResponse>
{
  static const char* value()
  {
    return DataType< ::chassis_tracking::SetTarget >::value();
  }
  static const char* value(const ::chassis_tracking::SetTargetResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CHASSIS_TRACKING_MESSAGE_SETTARGET_H
