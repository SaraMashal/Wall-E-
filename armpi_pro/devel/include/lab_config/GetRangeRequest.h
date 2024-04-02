// Generated by gencpp from file lab_config/GetRangeRequest.msg
// DO NOT EDIT!


#ifndef LAB_CONFIG_MESSAGE_GETRANGEREQUEST_H
#define LAB_CONFIG_MESSAGE_GETRANGEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lab_config
{
template <class ContainerAllocator>
struct GetRangeRequest_
{
  typedef GetRangeRequest_<ContainerAllocator> Type;

  GetRangeRequest_()
    : color_name()  {
    }
  GetRangeRequest_(const ContainerAllocator& _alloc)
    : color_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _color_name_type;
  _color_name_type color_name;





  typedef boost::shared_ptr< ::lab_config::GetRangeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lab_config::GetRangeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GetRangeRequest_

typedef ::lab_config::GetRangeRequest_<std::allocator<void> > GetRangeRequest;

typedef boost::shared_ptr< ::lab_config::GetRangeRequest > GetRangeRequestPtr;
typedef boost::shared_ptr< ::lab_config::GetRangeRequest const> GetRangeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lab_config::GetRangeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lab_config::GetRangeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lab_config::GetRangeRequest_<ContainerAllocator1> & lhs, const ::lab_config::GetRangeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.color_name == rhs.color_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lab_config::GetRangeRequest_<ContainerAllocator1> & lhs, const ::lab_config::GetRangeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lab_config

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::lab_config::GetRangeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab_config::GetRangeRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lab_config::GetRangeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lab_config::GetRangeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab_config::GetRangeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab_config::GetRangeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lab_config::GetRangeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c1ebd3bdb7f211ac2ddd328c08dba1e4";
  }

  static const char* value(const ::lab_config::GetRangeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc1ebd3bdb7f211acULL;
  static const uint64_t static_value2 = 0x2ddd328c08dba1e4ULL;
};

template<class ContainerAllocator>
struct DataType< ::lab_config::GetRangeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lab_config/GetRangeRequest";
  }

  static const char* value(const ::lab_config::GetRangeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lab_config::GetRangeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string color_name\n"
;
  }

  static const char* value(const ::lab_config::GetRangeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lab_config::GetRangeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.color_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetRangeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lab_config::GetRangeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lab_config::GetRangeRequest_<ContainerAllocator>& v)
  {
    s << indent << "color_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.color_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LAB_CONFIG_MESSAGE_GETRANGEREQUEST_H
