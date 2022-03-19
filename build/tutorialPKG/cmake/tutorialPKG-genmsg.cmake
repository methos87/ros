# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tutorialPKG: 1 messages, 1 services")

set(MSG_I_FLAGS "-ItutorialPKG:/home/methos/Documents/ros/src/tutorialPKG/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tutorialPKG_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/methos/Documents/ros/src/tutorialPKG/msg/person_data.msg" NAME_WE)
add_custom_target(_tutorialPKG_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorialPKG" "/home/methos/Documents/ros/src/tutorialPKG/msg/person_data.msg" ""
)

get_filename_component(_filename "/home/methos/Documents/ros/src/tutorialPKG/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_tutorialPKG_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorialPKG" "/home/methos/Documents/ros/src/tutorialPKG/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tutorialPKG
  "/home/methos/Documents/ros/src/tutorialPKG/msg/person_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorialPKG
)

### Generating Services
_generate_srv_cpp(tutorialPKG
  "/home/methos/Documents/ros/src/tutorialPKG/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorialPKG
)

### Generating Module File
_generate_module_cpp(tutorialPKG
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorialPKG
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tutorialPKG_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tutorialPKG_generate_messages tutorialPKG_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/methos/Documents/ros/src/tutorialPKG/msg/person_data.msg" NAME_WE)
add_dependencies(tutorialPKG_generate_messages_cpp _tutorialPKG_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/methos/Documents/ros/src/tutorialPKG/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(tutorialPKG_generate_messages_cpp _tutorialPKG_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tutorialPKG_gencpp)
add_dependencies(tutorialPKG_gencpp tutorialPKG_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tutorialPKG_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tutorialPKG
  "/home/methos/Documents/ros/src/tutorialPKG/msg/person_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorialPKG
)

### Generating Services
_generate_srv_eus(tutorialPKG
  "/home/methos/Documents/ros/src/tutorialPKG/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorialPKG
)

### Generating Module File
_generate_module_eus(tutorialPKG
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorialPKG
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tutorialPKG_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tutorialPKG_generate_messages tutorialPKG_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/methos/Documents/ros/src/tutorialPKG/msg/person_data.msg" NAME_WE)
add_dependencies(tutorialPKG_generate_messages_eus _tutorialPKG_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/methos/Documents/ros/src/tutorialPKG/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(tutorialPKG_generate_messages_eus _tutorialPKG_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tutorialPKG_geneus)
add_dependencies(tutorialPKG_geneus tutorialPKG_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tutorialPKG_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tutorialPKG
  "/home/methos/Documents/ros/src/tutorialPKG/msg/person_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorialPKG
)

### Generating Services
_generate_srv_lisp(tutorialPKG
  "/home/methos/Documents/ros/src/tutorialPKG/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorialPKG
)

### Generating Module File
_generate_module_lisp(tutorialPKG
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorialPKG
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tutorialPKG_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tutorialPKG_generate_messages tutorialPKG_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/methos/Documents/ros/src/tutorialPKG/msg/person_data.msg" NAME_WE)
add_dependencies(tutorialPKG_generate_messages_lisp _tutorialPKG_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/methos/Documents/ros/src/tutorialPKG/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(tutorialPKG_generate_messages_lisp _tutorialPKG_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tutorialPKG_genlisp)
add_dependencies(tutorialPKG_genlisp tutorialPKG_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tutorialPKG_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tutorialPKG
  "/home/methos/Documents/ros/src/tutorialPKG/msg/person_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorialPKG
)

### Generating Services
_generate_srv_nodejs(tutorialPKG
  "/home/methos/Documents/ros/src/tutorialPKG/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorialPKG
)

### Generating Module File
_generate_module_nodejs(tutorialPKG
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorialPKG
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tutorialPKG_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tutorialPKG_generate_messages tutorialPKG_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/methos/Documents/ros/src/tutorialPKG/msg/person_data.msg" NAME_WE)
add_dependencies(tutorialPKG_generate_messages_nodejs _tutorialPKG_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/methos/Documents/ros/src/tutorialPKG/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(tutorialPKG_generate_messages_nodejs _tutorialPKG_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tutorialPKG_gennodejs)
add_dependencies(tutorialPKG_gennodejs tutorialPKG_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tutorialPKG_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tutorialPKG
  "/home/methos/Documents/ros/src/tutorialPKG/msg/person_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorialPKG
)

### Generating Services
_generate_srv_py(tutorialPKG
  "/home/methos/Documents/ros/src/tutorialPKG/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorialPKG
)

### Generating Module File
_generate_module_py(tutorialPKG
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorialPKG
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tutorialPKG_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tutorialPKG_generate_messages tutorialPKG_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/methos/Documents/ros/src/tutorialPKG/msg/person_data.msg" NAME_WE)
add_dependencies(tutorialPKG_generate_messages_py _tutorialPKG_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/methos/Documents/ros/src/tutorialPKG/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(tutorialPKG_generate_messages_py _tutorialPKG_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tutorialPKG_genpy)
add_dependencies(tutorialPKG_genpy tutorialPKG_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tutorialPKG_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorialPKG)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorialPKG
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tutorialPKG_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorialPKG)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorialPKG
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tutorialPKG_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorialPKG)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorialPKG
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tutorialPKG_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorialPKG)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorialPKG
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tutorialPKG_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorialPKG)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorialPKG\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorialPKG
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tutorialPKG_generate_messages_py std_msgs_generate_messages_py)
endif()
