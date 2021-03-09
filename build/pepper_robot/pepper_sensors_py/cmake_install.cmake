# Install script for directory: /home/maelic/robobreizh_simu_ws/src/pepper_robot/pepper_sensors_py

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/maelic/robobreizh_simu_ws/build/pepper_robot/pepper_sensors_py/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/maelic/robobreizh_simu_ws/build/pepper_robot/pepper_sensors_py/catkin_generated/installspace/pepper_sensors_py.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pepper_sensors_py/cmake" TYPE FILE FILES
    "/home/maelic/robobreizh_simu_ws/build/pepper_robot/pepper_sensors_py/catkin_generated/installspace/pepper_sensors_pyConfig.cmake"
    "/home/maelic/robobreizh_simu_ws/build/pepper_robot/pepper_sensors_py/catkin_generated/installspace/pepper_sensors_pyConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pepper_sensors_py" TYPE FILE FILES "/home/maelic/robobreizh_simu_ws/src/pepper_robot/pepper_sensors_py/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pepper_sensors_py" TYPE PROGRAM FILES "/home/maelic/robobreizh_simu_ws/build/pepper_robot/pepper_sensors_py/catkin_generated/installspace/camera.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pepper_sensors_py" TYPE PROGRAM FILES "/home/maelic/robobreizh_simu_ws/build/pepper_robot/pepper_sensors_py/catkin_generated/installspace/laser.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pepper_sensors_py" TYPE DIRECTORY FILES "/home/maelic/robobreizh_simu_ws/src/pepper_robot/pepper_sensors_py/launch" FILES_MATCHING REGEX "/[^/]*\\.launch$")
endif()

