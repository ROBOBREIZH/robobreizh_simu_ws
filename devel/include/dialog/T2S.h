// Generated by gencpp from file dialog/T2S.msg
// DO NOT EDIT!


#ifndef DIALOG_MESSAGE_T2S_H
#define DIALOG_MESSAGE_T2S_H


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
struct T2S_
{
  typedef T2S_<ContainerAllocator> Type;

  T2S_()
    : text()
    , language()  {
    }
  T2S_(const ContainerAllocator& _alloc)
    : text(_alloc)
    , language(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _text_type;
  _text_type text;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _language_type;
  _language_type language;





  typedef boost::shared_ptr< ::dialog::T2S_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dialog::T2S_<ContainerAllocator> const> ConstPtr;

}; // struct T2S_

typedef ::dialog::T2S_<std::allocator<void> > T2S;

typedef boost::shared_ptr< ::dialog::T2S > T2SPtr;
typedef boost::shared_ptr< ::dialog::T2S const> T2SConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dialog::T2S_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dialog::T2S_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::dialog::T2S_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dialog::T2S_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dialog::T2S_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dialog::T2S_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dialog::T2S_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dialog::T2S_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dialog::T2S_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8227818ab6074445792448d628153554";
  }

  static const char* value(const ::dialog::T2S_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8227818ab6074445ULL;
  static const uint64_t static_value2 = 0x792448d628153554ULL;
};

template<class ContainerAllocator>
struct DataType< ::dialog::T2S_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dialog/T2S";
  }

  static const char* value(const ::dialog::T2S_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dialog::T2S_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string text\n\
string language\n\
";
  }

  static const char* value(const ::dialog::T2S_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dialog::T2S_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.text);
      stream.next(m.language);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct T2S_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dialog::T2S_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dialog::T2S_<ContainerAllocator>& v)
  {
    s << indent << "text: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.text);
    s << indent << "language: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.language);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DIALOG_MESSAGE_T2S_H
