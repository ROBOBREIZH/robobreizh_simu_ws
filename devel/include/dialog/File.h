// Generated by gencpp from file dialog/File.msg
// DO NOT EDIT!


#ifndef DIALOG_MESSAGE_FILE_H
#define DIALOG_MESSAGE_FILE_H


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
struct File_
{
  typedef File_<ContainerAllocator> Type;

  File_()
    : data()
    , extension()  {
    }
  File_(const ContainerAllocator& _alloc)
    : data(_alloc)
    , extension(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _data_type;
  _data_type data;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _extension_type;
  _extension_type extension;





  typedef boost::shared_ptr< ::dialog::File_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dialog::File_<ContainerAllocator> const> ConstPtr;

}; // struct File_

typedef ::dialog::File_<std::allocator<void> > File;

typedef boost::shared_ptr< ::dialog::File > FilePtr;
typedef boost::shared_ptr< ::dialog::File const> FileConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dialog::File_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dialog::File_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::dialog::File_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dialog::File_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dialog::File_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dialog::File_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dialog::File_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dialog::File_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dialog::File_<ContainerAllocator> >
{
  static const char* value()
  {
    return "88be86ccd453e2070ff3582ad605e3d2";
  }

  static const char* value(const ::dialog::File_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x88be86ccd453e207ULL;
  static const uint64_t static_value2 = 0x0ff3582ad605e3d2ULL;
};

template<class ContainerAllocator>
struct DataType< ::dialog::File_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dialog/File";
  }

  static const char* value(const ::dialog::File_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dialog::File_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string data\n\
string extension\n\
";
  }

  static const char* value(const ::dialog::File_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dialog::File_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
      stream.next(m.extension);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct File_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dialog::File_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dialog::File_<ContainerAllocator>& v)
  {
    s << indent << "data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.data);
    s << indent << "extension: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.extension);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DIALOG_MESSAGE_FILE_H
