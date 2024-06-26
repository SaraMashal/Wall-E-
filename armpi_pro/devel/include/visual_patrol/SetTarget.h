// Generated by gencpp from file visual_patrol/SetTarget.msg
// DO NOT EDIT!


#ifndef VISUAL_PATROL_MESSAGE_SETTARGET_H
#define VISUAL_PATROL_MESSAGE_SETTARGET_H

#include <ros/service_traits.h>


#include <visual_patrol/SetTargetRequest.h>
#include <visual_patrol/SetTargetResponse.h>


namespace visual_patrol
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
} // namespace visual_patrol


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::visual_patrol::SetTarget > {
  static const char* value()
  {
    return "546971982e3fbbd5a41e60fb6432e357";
  }

  static const char* value(const ::visual_patrol::SetTarget&) { return value(); }
};

template<>
struct DataType< ::visual_patrol::SetTarget > {
  static const char* value()
  {
    return "visual_patrol/SetTarget";
  }

  static const char* value(const ::visual_patrol::SetTarget&) { return value(); }
};


// service_traits::MD5Sum< ::visual_patrol::SetTargetRequest> should match
// service_traits::MD5Sum< ::visual_patrol::SetTarget >
template<>
struct MD5Sum< ::visual_patrol::SetTargetRequest>
{
  static const char* value()
  {
    return MD5Sum< ::visual_patrol::SetTarget >::value();
  }
  static const char* value(const ::visual_patrol::SetTargetRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::visual_patrol::SetTargetRequest> should match
// service_traits::DataType< ::visual_patrol::SetTarget >
template<>
struct DataType< ::visual_patrol::SetTargetRequest>
{
  static const char* value()
  {
    return DataType< ::visual_patrol::SetTarget >::value();
  }
  static const char* value(const ::visual_patrol::SetTargetRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::visual_patrol::SetTargetResponse> should match
// service_traits::MD5Sum< ::visual_patrol::SetTarget >
template<>
struct MD5Sum< ::visual_patrol::SetTargetResponse>
{
  static const char* value()
  {
    return MD5Sum< ::visual_patrol::SetTarget >::value();
  }
  static const char* value(const ::visual_patrol::SetTargetResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::visual_patrol::SetTargetResponse> should match
// service_traits::DataType< ::visual_patrol::SetTarget >
template<>
struct DataType< ::visual_patrol::SetTargetResponse>
{
  static const char* value()
  {
    return DataType< ::visual_patrol::SetTarget >::value();
  }
  static const char* value(const ::visual_patrol::SetTargetResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VISUAL_PATROL_MESSAGE_SETTARGET_H
