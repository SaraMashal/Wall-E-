// Generated by gencpp from file test/angleResponse.msg
// DO NOT EDIT!


#ifndef TEST_MESSAGE_ANGLERESPONSE_H
#define TEST_MESSAGE_ANGLERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace test
{
template <class ContainerAllocator>
struct angleResponse_
{
  typedef angleResponse_<ContainerAllocator> Type;

  angleResponse_()
    : response()  {
    }
  angleResponse_(const ContainerAllocator& _alloc)
    : response(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _response_type;
  _response_type response;





  typedef boost::shared_ptr< ::test::angleResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::test::angleResponse_<ContainerAllocator> const> ConstPtr;

}; // struct angleResponse_

typedef ::test::angleResponse_<std::allocator<void> > angleResponse;

typedef boost::shared_ptr< ::test::angleResponse > angleResponsePtr;
typedef boost::shared_ptr< ::test::angleResponse const> angleResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::test::angleResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::test::angleResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::test::angleResponse_<ContainerAllocator1> & lhs, const ::test::angleResponse_<ContainerAllocator2> & rhs)
{
  return lhs.response == rhs.response;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::test::angleResponse_<ContainerAllocator1> & lhs, const ::test::angleResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace test

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::test::angleResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::test::angleResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test::angleResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test::angleResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test::angleResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test::angleResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::test::angleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6de314e2dc76fbff2b6244a6ad70b68d";
  }

  static const char* value(const ::test::angleResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6de314e2dc76fbffULL;
  static const uint64_t static_value2 = 0x2b6244a6ad70b68dULL;
};

template<class ContainerAllocator>
struct DataType< ::test::angleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "test/angleResponse";
  }

  static const char* value(const ::test::angleResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::test::angleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string response\n"
"\n"
;
  }

  static const char* value(const ::test::angleResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::test::angleResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.response);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct angleResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::test::angleResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::test::angleResponse_<ContainerAllocator>& v)
  {
    s << indent << "response: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.response);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEST_MESSAGE_ANGLERESPONSE_H