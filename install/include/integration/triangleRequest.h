// Generated by gencpp from file integration/triangleRequest.msg
// DO NOT EDIT!


#ifndef INTEGRATION_MESSAGE_TRIANGLEREQUEST_H
#define INTEGRATION_MESSAGE_TRIANGLEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Point.h>

namespace integration
{
template <class ContainerAllocator>
struct triangleRequest_
{
  typedef triangleRequest_<ContainerAllocator> Type;

  triangleRequest_()
    : p1()
    , p2()
    , p3()  {
    }
  triangleRequest_(const ContainerAllocator& _alloc)
    : p1(_alloc)
    , p2(_alloc)
    , p3(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _p1_type;
  _p1_type p1;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _p2_type;
  _p2_type p2;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _p3_type;
  _p3_type p3;





  typedef boost::shared_ptr< ::integration::triangleRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::integration::triangleRequest_<ContainerAllocator> const> ConstPtr;

}; // struct triangleRequest_

typedef ::integration::triangleRequest_<std::allocator<void> > triangleRequest;

typedef boost::shared_ptr< ::integration::triangleRequest > triangleRequestPtr;
typedef boost::shared_ptr< ::integration::triangleRequest const> triangleRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::integration::triangleRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::integration::triangleRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::integration::triangleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::integration::triangleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::integration::triangleRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::integration::triangleRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::integration::triangleRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::integration::triangleRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::integration::triangleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "480a47a04a0e0681cafbb5fbe734f2d4";
  }

  static const char* value(const ::integration::triangleRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x480a47a04a0e0681ULL;
  static const uint64_t static_value2 = 0xcafbb5fbe734f2d4ULL;
};

template<class ContainerAllocator>
struct DataType< ::integration::triangleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "integration/triangleRequest";
  }

  static const char* value(const ::integration::triangleRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::integration::triangleRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Point p1\n\
geometry_msgs/Point p2\n\
geometry_msgs/Point p3\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::integration::triangleRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::integration::triangleRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.p1);
      stream.next(m.p2);
      stream.next(m.p3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct triangleRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::integration::triangleRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::integration::triangleRequest_<ContainerAllocator>& v)
  {
    s << indent << "p1: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.p1);
    s << indent << "p2: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.p2);
    s << indent << "p3: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.p3);
  }
};

} // namespace message_operations
} // namespace ros

#endif // INTEGRATION_MESSAGE_TRIANGLEREQUEST_H
