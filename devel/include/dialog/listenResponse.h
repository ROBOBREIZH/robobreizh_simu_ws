// Generated by gencpp from file dialog/listenResponse.msg
// DO NOT EDIT!


#ifndef DIALOG_MESSAGE_LISTENRESPONSE_H
#define DIALOG_MESSAGE_LISTENRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dialog
{
template <class ContainerAllocator>
struct listenResponse_
{
  typedef listenResponse_<ContainerAllocator> Type;

  listenResponse_()
    : text_s2t()  {
    }
  listenResponse_(const ContainerAllocator& _alloc)
    : text_s2t(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _text_s2t_type;
  _text_s2t_type text_s2t;





  typedef boost::shared_ptr< ::dialog::listenResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dialog::listenResponse_<ContainerAllocator> const> ConstPtr;

}; // struct listenResponse_

typedef ::dialog::listenResponse_<std::allocator<void> > listenResponse;

typedef boost::shared_ptr< ::dialog::listenResponse > listenResponsePtr;
typedef boost::shared_ptr< ::dialog::listenResponse const> listenResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dialog::listenResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dialog::listenResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dialog

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'dialog': ['/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dialog::listenResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dialog::listenResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dialog::listenResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dialog::listenResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dialog::listenResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dialog::listenResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dialog::listenResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "915e40f1ff1c642978a0615da0edef22";
  }

  static const char* value(const ::dialog::listenResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x915e40f1ff1c6429ULL;
  static const uint64_t static_value2 = 0x78a0615da0edef22ULL;
};

template<class ContainerAllocator>
struct DataType< ::dialog::listenResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dialog/listenResponse";
  }

  static const char* value(const ::dialog::listenResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dialog::listenResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] text_s2t\n\
\n\
\n\
";
  }

  static const char* value(const ::dialog::listenResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dialog::listenResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.text_s2t);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct listenResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dialog::listenResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dialog::listenResponse_<ContainerAllocator>& v)
  {
    s << indent << "text_s2t[]" << std::endl;
    for (size_t i = 0; i < v.text_s2t.size(); ++i)
    {
      s << indent << "  text_s2t[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.text_s2t[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // DIALOG_MESSAGE_LISTENRESPONSE_H
