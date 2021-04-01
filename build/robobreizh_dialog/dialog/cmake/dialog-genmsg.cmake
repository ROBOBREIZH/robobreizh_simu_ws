# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dialog: 3 messages, 2 services")

set(MSG_I_FLAGS "-Idialog:/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dialog_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/T2S.msg" NAME_WE)
add_custom_target(_dialog_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dialog" "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/T2S.msg" ""
)

get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/File.msg" NAME_WE)
add_custom_target(_dialog_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dialog" "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/File.msg" ""
)

get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/Wav.msg" NAME_WE)
add_custom_target(_dialog_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dialog" "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/Wav.msg" ""
)

get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/speak.srv" NAME_WE)
add_custom_target(_dialog_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dialog" "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/speak.srv" ""
)

get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/listen.srv" NAME_WE)
add_custom_target(_dialog_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dialog" "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/listen.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/T2S.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dialog
)
_generate_msg_cpp(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/File.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dialog
)
_generate_msg_cpp(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/Wav.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dialog
)

### Generating Services
_generate_srv_cpp(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/speak.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dialog
)
_generate_srv_cpp(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/listen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dialog
)

### Generating Module File
_generate_module_cpp(dialog
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dialog
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dialog_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dialog_generate_messages dialog_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/T2S.msg" NAME_WE)
add_dependencies(dialog_generate_messages_cpp _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/File.msg" NAME_WE)
add_dependencies(dialog_generate_messages_cpp _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/Wav.msg" NAME_WE)
add_dependencies(dialog_generate_messages_cpp _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/speak.srv" NAME_WE)
add_dependencies(dialog_generate_messages_cpp _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/listen.srv" NAME_WE)
add_dependencies(dialog_generate_messages_cpp _dialog_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dialog_gencpp)
add_dependencies(dialog_gencpp dialog_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dialog_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/T2S.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dialog
)
_generate_msg_eus(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/File.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dialog
)
_generate_msg_eus(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/Wav.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dialog
)

### Generating Services
_generate_srv_eus(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/speak.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dialog
)
_generate_srv_eus(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/listen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dialog
)

### Generating Module File
_generate_module_eus(dialog
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dialog
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dialog_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dialog_generate_messages dialog_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/T2S.msg" NAME_WE)
add_dependencies(dialog_generate_messages_eus _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/File.msg" NAME_WE)
add_dependencies(dialog_generate_messages_eus _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/Wav.msg" NAME_WE)
add_dependencies(dialog_generate_messages_eus _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/speak.srv" NAME_WE)
add_dependencies(dialog_generate_messages_eus _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/listen.srv" NAME_WE)
add_dependencies(dialog_generate_messages_eus _dialog_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dialog_geneus)
add_dependencies(dialog_geneus dialog_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dialog_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/T2S.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dialog
)
_generate_msg_lisp(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/File.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dialog
)
_generate_msg_lisp(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/Wav.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dialog
)

### Generating Services
_generate_srv_lisp(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/speak.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dialog
)
_generate_srv_lisp(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/listen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dialog
)

### Generating Module File
_generate_module_lisp(dialog
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dialog
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dialog_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dialog_generate_messages dialog_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/T2S.msg" NAME_WE)
add_dependencies(dialog_generate_messages_lisp _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/File.msg" NAME_WE)
add_dependencies(dialog_generate_messages_lisp _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/Wav.msg" NAME_WE)
add_dependencies(dialog_generate_messages_lisp _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/speak.srv" NAME_WE)
add_dependencies(dialog_generate_messages_lisp _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/listen.srv" NAME_WE)
add_dependencies(dialog_generate_messages_lisp _dialog_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dialog_genlisp)
add_dependencies(dialog_genlisp dialog_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dialog_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/T2S.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dialog
)
_generate_msg_nodejs(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/File.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dialog
)
_generate_msg_nodejs(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/Wav.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dialog
)

### Generating Services
_generate_srv_nodejs(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/speak.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dialog
)
_generate_srv_nodejs(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/listen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dialog
)

### Generating Module File
_generate_module_nodejs(dialog
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dialog
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dialog_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dialog_generate_messages dialog_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/T2S.msg" NAME_WE)
add_dependencies(dialog_generate_messages_nodejs _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/File.msg" NAME_WE)
add_dependencies(dialog_generate_messages_nodejs _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/Wav.msg" NAME_WE)
add_dependencies(dialog_generate_messages_nodejs _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/speak.srv" NAME_WE)
add_dependencies(dialog_generate_messages_nodejs _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/listen.srv" NAME_WE)
add_dependencies(dialog_generate_messages_nodejs _dialog_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dialog_gennodejs)
add_dependencies(dialog_gennodejs dialog_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dialog_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/T2S.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialog
)
_generate_msg_py(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/File.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialog
)
_generate_msg_py(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/Wav.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialog
)

### Generating Services
_generate_srv_py(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/speak.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialog
)
_generate_srv_py(dialog
  "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/listen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialog
)

### Generating Module File
_generate_module_py(dialog
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialog
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dialog_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dialog_generate_messages dialog_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/T2S.msg" NAME_WE)
add_dependencies(dialog_generate_messages_py _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/File.msg" NAME_WE)
add_dependencies(dialog_generate_messages_py _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/msg/Wav.msg" NAME_WE)
add_dependencies(dialog_generate_messages_py _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/speak.srv" NAME_WE)
add_dependencies(dialog_generate_messages_py _dialog_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/maelic/robobreizh_simu_ws/src/robobreizh_dialog/dialog/srv/listen.srv" NAME_WE)
add_dependencies(dialog_generate_messages_py _dialog_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dialog_genpy)
add_dependencies(dialog_genpy dialog_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dialog_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dialog)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dialog
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dialog_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dialog)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dialog
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dialog_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dialog)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dialog
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dialog_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dialog)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dialog
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dialog_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialog)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialog\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dialog
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dialog_generate_messages_py std_msgs_generate_messages_py)
endif()
