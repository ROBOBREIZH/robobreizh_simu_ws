# Install script for directory: /home/maelic/robobreizh_simu_ws/src/aws-robomaker-small-house-world

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/maelic/robobreizh_simu_ws/build/aws-robomaker-small-house-world/catkin_generated/installspace/aws_robomaker_small_house_world.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aws_robomaker_small_house_world/cmake" TYPE FILE FILES
    "/home/maelic/robobreizh_simu_ws/build/aws-robomaker-small-house-world/catkin_generated/installspace/aws_robomaker_small_house_worldConfig.cmake"
    "/home/maelic/robobreizh_simu_ws/build/aws-robomaker-small-house-world/catkin_generated/installspace/aws_robomaker_small_house_worldConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aws_robomaker_small_house_world" TYPE FILE FILES "/home/maelic/robobreizh_simu_ws/src/aws-robomaker-small-house-world/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aws_robomaker_small_house_world" TYPE DIRECTORY FILES
    "/home/maelic/robobreizh_simu_ws/src/aws-robomaker-small-house-world/launch"
    "/home/maelic/robobreizh_simu_ws/src/aws-robomaker-small-house-world/models"
    "/home/maelic/robobreizh_simu_ws/src/aws-robomaker-small-house-world/worlds"
    "/home/maelic/robobreizh_simu_ws/src/aws-robomaker-small-house-world/maps"
    "/home/maelic/robobreizh_simu_ws/src/aws-robomaker-small-house-world/photos"
    "/home/maelic/robobreizh_simu_ws/src/aws-robomaker-small-house-world/routes"
    )
endif()

