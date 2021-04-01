# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mbot_nlu: 3 messages, 0 services")

set(MSG_I_FLAGS "-Imbot_nlu:/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mbot_nlu_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlotArray.msg" NAME_WE)
add_custom_target(_mbot_nlu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mbot_nlu" "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlotArray.msg" "mbot_nlu/Slot:mbot_nlu/ActionSlot"
)

get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg" NAME_WE)
add_custom_target(_mbot_nlu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mbot_nlu" "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg" ""
)

get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg" NAME_WE)
add_custom_target(_mbot_nlu_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mbot_nlu" "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg" "mbot_nlu/Slot"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mbot_nlu
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlotArray.msg"
  "${MSG_I_FLAGS}"
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg;/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mbot_nlu
)
_generate_msg_cpp(mbot_nlu
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg"
  "${MSG_I_FLAGS}"
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mbot_nlu
)
_generate_msg_cpp(mbot_nlu
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mbot_nlu
)

### Generating Services

### Generating Module File
_generate_module_cpp(mbot_nlu
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mbot_nlu
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mbot_nlu_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mbot_nlu_generate_messages mbot_nlu_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlotArray.msg" NAME_WE)
add_dependencies(mbot_nlu_generate_messages_cpp _mbot_nlu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg" NAME_WE)
add_dependencies(mbot_nlu_generate_messages_cpp _mbot_nlu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg" NAME_WE)
add_dependencies(mbot_nlu_generate_messages_cpp _mbot_nlu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mbot_nlu_gencpp)
add_dependencies(mbot_nlu_gencpp mbot_nlu_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mbot_nlu_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mbot_nlu
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlotArray.msg"
  "${MSG_I_FLAGS}"
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg;/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mbot_nlu
)
_generate_msg_eus(mbot_nlu
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg"
  "${MSG_I_FLAGS}"
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mbot_nlu
)
_generate_msg_eus(mbot_nlu
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mbot_nlu
)

### Generating Services

### Generating Module File
_generate_module_eus(mbot_nlu
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mbot_nlu
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mbot_nlu_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mbot_nlu_generate_messages mbot_nlu_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlotArray.msg" NAME_WE)
add_dependencies(mbot_nlu_generate_messages_eus _mbot_nlu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg" NAME_WE)
add_dependencies(mbot_nlu_generate_messages_eus _mbot_nlu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg" NAME_WE)
add_dependencies(mbot_nlu_generate_messages_eus _mbot_nlu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mbot_nlu_geneus)
add_dependencies(mbot_nlu_geneus mbot_nlu_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mbot_nlu_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mbot_nlu
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlotArray.msg"
  "${MSG_I_FLAGS}"
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg;/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mbot_nlu
)
_generate_msg_lisp(mbot_nlu
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg"
  "${MSG_I_FLAGS}"
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mbot_nlu
)
_generate_msg_lisp(mbot_nlu
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mbot_nlu
)

### Generating Services

### Generating Module File
_generate_module_lisp(mbot_nlu
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mbot_nlu
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mbot_nlu_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mbot_nlu_generate_messages mbot_nlu_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlotArray.msg" NAME_WE)
add_dependencies(mbot_nlu_generate_messages_lisp _mbot_nlu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg" NAME_WE)
add_dependencies(mbot_nlu_generate_messages_lisp _mbot_nlu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg" NAME_WE)
add_dependencies(mbot_nlu_generate_messages_lisp _mbot_nlu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mbot_nlu_genlisp)
add_dependencies(mbot_nlu_genlisp mbot_nlu_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mbot_nlu_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mbot_nlu
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlotArray.msg"
  "${MSG_I_FLAGS}"
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg;/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mbot_nlu
)
_generate_msg_nodejs(mbot_nlu
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg"
  "${MSG_I_FLAGS}"
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mbot_nlu
)
_generate_msg_nodejs(mbot_nlu
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mbot_nlu
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mbot_nlu
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mbot_nlu
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mbot_nlu_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mbot_nlu_generate_messages mbot_nlu_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlotArray.msg" NAME_WE)
add_dependencies(mbot_nlu_generate_messages_nodejs _mbot_nlu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg" NAME_WE)
add_dependencies(mbot_nlu_generate_messages_nodejs _mbot_nlu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg" NAME_WE)
add_dependencies(mbot_nlu_generate_messages_nodejs _mbot_nlu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mbot_nlu_gennodejs)
add_dependencies(mbot_nlu_gennodejs mbot_nlu_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mbot_nlu_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mbot_nlu
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlotArray.msg"
  "${MSG_I_FLAGS}"
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg;/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mbot_nlu
)
_generate_msg_py(mbot_nlu
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg"
  "${MSG_I_FLAGS}"
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mbot_nlu
)
_generate_msg_py(mbot_nlu
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mbot_nlu
)

### Generating Services

### Generating Module File
_generate_module_py(mbot_nlu
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mbot_nlu
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mbot_nlu_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mbot_nlu_generate_messages mbot_nlu_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlotArray.msg" NAME_WE)
add_dependencies(mbot_nlu_generate_messages_py _mbot_nlu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/Slot.msg" NAME_WE)
add_dependencies(mbot_nlu_generate_messages_py _mbot_nlu_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/mbot_natural_language_processing/mbot_nlu/ros/msg/ActionSlot.msg" NAME_WE)
add_dependencies(mbot_nlu_generate_messages_py _mbot_nlu_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mbot_nlu_genpy)
add_dependencies(mbot_nlu_genpy mbot_nlu_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mbot_nlu_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mbot_nlu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mbot_nlu
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mbot_nlu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mbot_nlu
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mbot_nlu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mbot_nlu
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mbot_nlu)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mbot_nlu
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mbot_nlu)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mbot_nlu\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mbot_nlu
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mbot_nlu
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mbot_nlu/.+/__init__.pyc?$"
  )
endif()
