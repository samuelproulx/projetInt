// Generated by gencpp from file integration/triangleResponse.msg
// DO NOT EDIT!


#ifndef INTEGRATION_MESSAGE_TRIANGLERESPONSE_H
#define INTEGRATION_MESSAGE_TRIANGLERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace integration
{
template <class ContainerAllocator>
struct triangleResponse_
{
  typedef triangleResponse_<ContainerAllocator> Type;

  triangleResponse_()
    : aire(0.0)  {
    }
  triangleResponse_(const ContainerAllocator& _alloc)
    : aire(0.0)  {
  (void)_alloc;
    }



   typedef double _aire_type;
  _aire_type aire;





  typedef boost::shared_ptr< ::integration::triangleResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::integration::triangleResponse_<ContainerAllocator> const> ConstPtr;

}; // struct triangleResponse_

typedef ::integration::triangleResponse_<std::allocator<void> > triangleResponse;

typedef boost::shared_ptr< ::integration::triangleResponse > triangleResponsePtr;
typedef boost::shared_ptr< ::integration::triangleResponse const> triangleResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::integration::triangleResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::integration::triangleResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace integration

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::integration::triangleResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::integration::triangleResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::integration::triangleResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::integration::triangleResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::integration::triangleResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::integration::triangleResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::integration::triangleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "556d735e77d3ab8a36cc46e0c4315903";
  }

  static const char* value(const ::integration::triangleResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x556d735e77d3ab8aULL;
  static const uint64_t static_value2 = 0x36cc46e0c4315903ULL;
};

template<class ContainerAllocator>
struct DataType< ::integration::triangleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "integration/triangleResponse";
  }

  static const char* value(const ::integration::triangleResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::integration::triangleResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 aire\n\
\n\
";
  }

  static const char* value(const ::integration::triangleResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::integration::triangleResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.aire);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct triangleResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::integration::triangleResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::integration::triangleResponse_<ContainerAllocator>& v)
  {
    s << indent << "aire: ";
    Printer<double>::stream(s, indent + "  ", v.aire);
  }
};

} // namespace message_operations
} // namespace ros

#endif // INTEGRATION_MESSAGE_TRIANGLERESPONSE_H
