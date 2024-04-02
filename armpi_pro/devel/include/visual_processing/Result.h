// Generated by gencpp from file visual_processing/Result.msg
// DO NOT EDIT!


#ifndef VISUAL_PROCESSING_MESSAGE_RESULT_H
#define VISUAL_PROCESSING_MESSAGE_RESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace visual_processing
{
template <class ContainerAllocator>
struct Result_
{
  typedef Result_<ContainerAllocator> Type;

  Result_()
    : center_x(0)
    , center_y(0)
    , data(0.0)
    , angle(0.0)  {
    }
  Result_(const ContainerAllocator& _alloc)
    : center_x(0)
    , center_y(0)
    , data(0.0)
    , angle(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _center_x_type;
  _center_x_type center_x;

   typedef int32_t _center_y_type;
  _center_y_type center_y;

   typedef double _data_type;
  _data_type data;

   typedef double _angle_type;
  _angle_type angle;





  typedef boost::shared_ptr< ::visual_processing::Result_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::visual_processing::Result_<ContainerAllocator> const> ConstPtr;

}; // struct Result_

typedef ::visual_processing::Result_<std::allocator<void> > Result;

typedef boost::shared_ptr< ::visual_processing::Result > ResultPtr;
typedef boost::shared_ptr< ::visual_processing::Result const> ResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::visual_processing::Result_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::visual_processing::Result_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::visual_processing::Result_<ContainerAllocator1> & lhs, const ::visual_processing::Result_<ContainerAllocator2> & rhs)
{
  return lhs.center_x == rhs.center_x &&
    lhs.center_y == rhs.center_y &&
    lhs.data == rhs.data &&
    lhs.angle == rhs.angle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::visual_processing::Result_<ContainerAllocator1> & lhs, const ::visual_processing::Result_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace visual_processing

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::visual_processing::Result_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::visual_processing::Result_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::visual_processing::Result_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::visual_processing::Result_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::visual_processing::Result_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::visual_processing::Result_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::visual_processing::Result_<ContainerAllocator> >
{
  static const char* value()
  {
    return "da4b4953f0cc816df8987dd9cf6150ed";
  }

  static const char* value(const ::visual_processing::Result_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xda4b4953f0cc816dULL;
  static const uint64_t static_value2 = 0xf8987dd9cf6150edULL;
};

template<class ContainerAllocator>
struct DataType< ::visual_processing::Result_<ContainerAllocator> >
{
  static const char* value()
  {
    return "visual_processing/Result";
  }

  static const char* value(const ::visual_processing::Result_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::visual_processing::Result_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 center_x\n"
"int32 center_y\n"
"float64 data\n"
"float64 angle\n"
;
  }

  static const char* value(const ::visual_processing::Result_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::visual_processing::Result_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.center_x);
      stream.next(m.center_y);
      stream.next(m.data);
      stream.next(m.angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Result_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::visual_processing::Result_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::visual_processing::Result_<ContainerAllocator>& v)
  {
    s << indent << "center_x: ";
    Printer<int32_t>::stream(s, indent + "  ", v.center_x);
    s << indent << "center_y: ";
    Printer<int32_t>::stream(s, indent + "  ", v.center_y);
    s << indent << "data: ";
    Printer<double>::stream(s, indent + "  ", v.data);
    s << indent << "angle: ";
    Printer<double>::stream(s, indent + "  ", v.angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISUAL_PROCESSING_MESSAGE_RESULT_H