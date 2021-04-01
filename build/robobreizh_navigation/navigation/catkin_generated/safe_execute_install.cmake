execute_process(COMMAND "/home/maelic/robobreizh_simu_ws/build/robobreizh_navigation/navigation/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/maelic/robobreizh_simu_ws/build/robobreizh_navigation/navigation/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
