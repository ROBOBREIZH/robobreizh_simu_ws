# Install script for directory: /home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/maelic/robobreizh_simu_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mbot_nlu/ros/msg" TYPE FILE FILES
    "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg"
    "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg"
    "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlotArray.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/maelic/robobreizh_simu_ws/build/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mbot_nlu/cmake" TYPE FILE FILES "/home/maelic/robobreizh_simu_ws/build/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/catkin_generated/installspace/mbot_nlu-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/maelic/robobreizh_simu_ws/devel/include/mbot_nlu")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/maelic/robobreizh_simu_ws/devel/share/roseus/ros/mbot_nlu")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/maelic/robobreizh_simu_ws/devel/share/common-lisp/ros/mbot_nlu")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/maelic/robobreizh_simu_ws/devel/share/gennodejs/ros/mbot_nlu")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/maelic/robobreizh_simu_ws/devel/lib/python2.7/dist-packages/mbot_nlu")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/maelic/robobreizh_simu_ws/devel/lib/python2.7/dist-packages/mbot_nlu" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/maelic/robobreizh_simu_ws/devel/lib/python2.7/dist-packages/mbot_nlu" FILES_MATCHING REGEX "/home/maelic/robobreizh_simu_ws/devel/lib/python2.7/dist-packages/mbot_nlu/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/maelic/robobreizh_simu_ws/build/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/catkin_generated/installspace/mbot_nlu.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mbot_nlu/cmake" TYPE FILE FILES "/home/maelic/robobreizh_simu_ws/build/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/catkin_generated/installspace/mbot_nlu-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mbot_nlu/cmake" TYPE FILE FILES
    "/home/maelic/robobreizh_simu_ws/build/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/catkin_generated/installspace/mbot_nluConfig.cmake"
    "/home/maelic/robobreizh_simu_ws/build/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/catkin_generated/installspace/mbot_nluConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mbot_nlu" TYPE FILE FILES "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/package.xml")
endif()

