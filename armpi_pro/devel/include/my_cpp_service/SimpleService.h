// Generated by gencpp from file my_cpp_service/SimpleService.msg
// DO NOT EDIT!


#ifndef MY_CPP_SERVICE_MESSAGE_SIMPLESERVICE_H
#define MY_CPP_SERVICE_MESSAGE_SIMPLESERVICE_H

#include <ros/service_traits.h>


#include <my_cpp_service/SimpleServiceRequest.h>
#include <my_cpp_service/SimpleServiceResponse.h>


namespace my_cpp_service
{

struct SimpleService
{

typedef SimpleServiceRequest Request;
typedef SimpleServiceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SimpleService
} // namespace my_cpp_service


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_cpp_service::SimpleService > {
  static const char* value()
  {
    return "fa085dd523f7935c5f5364b0b8e8e1ef";
  }

  static const char* value(const ::my_cpp_service::SimpleService&) { return value(); }
};

template<>
struct DataType< ::my_cpp_service::SimpleService > {
  static const char* value()
  {
    return "my_cpp_service/SimpleService";
  }

  static const char* value(const ::my_cpp_service::SimpleService&) { return value(); }
};


// service_traits::MD5Sum< ::my_cpp_service::SimpleServiceRequest> should match
// service_traits::MD5Sum< ::my_cpp_service::SimpleService >
template<>
struct MD5Sum< ::my_cpp_service::SimpleServiceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::my_cpp_service::SimpleService >::value();
  }
  static const char* value(const ::my_cpp_service::SimpleServiceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_cpp_service::SimpleServiceRequest> should match
// service_traits::DataType< ::my_cpp_service::SimpleService >
template<>
struct DataType< ::my_cpp_service::SimpleServiceRequest>
{
  static const char* value()
  {
    return DataType< ::my_cpp_service::SimpleService >::value();
  }
  static const char* value(const ::my_cpp_service::SimpleServiceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_cpp_service::SimpleServiceResponse> should match
// service_traits::MD5Sum< ::my_cpp_service::SimpleService >
template<>
struct MD5Sum< ::my_cpp_service::SimpleServiceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::my_cpp_service::SimpleService >::value();
  }
  static const char* value(const ::my_cpp_service::SimpleServiceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_cpp_service::SimpleServiceResponse> should match
// service_traits::DataType< ::my_cpp_service::SimpleService >
template<>
struct DataType< ::my_cpp_service::SimpleServiceResponse>
{
  static const char* value()
  {
    return DataType< ::my_cpp_service::SimpleService >::value();
  }
  static const char* value(const ::my_cpp_service::SimpleServiceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_CPP_SERVICE_MESSAGE_SIMPLESERVICE_H
