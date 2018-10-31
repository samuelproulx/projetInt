# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pkgInt: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pkgInt_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/samuel/Documents/projetInt/src/pkgInt/srv/triangle.srv" NAME_WE)
add_custom_target(_pkgInt_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pkgInt" "/home/samuel/Documents/projetInt/src/pkgInt/srv/triangle.srv" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(pkgInt
  "/home/samuel/Documents/projetInt/src/pkgInt/srv/triangle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkgInt
)

### Generating Module File
_generate_module_cpp(pkgInt
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkgInt
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pkgInt_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pkgInt_generate_messages pkgInt_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/samuel/Documents/projetInt/src/pkgInt/srv/triangle.srv" NAME_WE)
add_dependencies(pkgInt_generate_messages_cpp _pkgInt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkgInt_gencpp)
add_dependencies(pkgInt_gencpp pkgInt_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkgInt_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(pkgInt
  "/home/samuel/Documents/projetInt/src/pkgInt/srv/triangle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkgInt
)

### Generating Module File
_generate_module_eus(pkgInt
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkgInt
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pkgInt_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pkgInt_generate_messages pkgInt_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/samuel/Documents/projetInt/src/pkgInt/srv/triangle.srv" NAME_WE)
add_dependencies(pkgInt_generate_messages_eus _pkgInt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkgInt_geneus)
add_dependencies(pkgInt_geneus pkgInt_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkgInt_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(pkgInt
  "/home/samuel/Documents/projetInt/src/pkgInt/srv/triangle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkgInt
)

### Generating Module File
_generate_module_lisp(pkgInt
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkgInt
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pkgInt_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pkgInt_generate_messages pkgInt_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/samuel/Documents/projetInt/src/pkgInt/srv/triangle.srv" NAME_WE)
add_dependencies(pkgInt_generate_messages_lisp _pkgInt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkgInt_genlisp)
add_dependencies(pkgInt_genlisp pkgInt_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkgInt_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(pkgInt
  "/home/samuel/Documents/projetInt/src/pkgInt/srv/triangle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkgInt
)

### Generating Module File
_generate_module_nodejs(pkgInt
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkgInt
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pkgInt_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pkgInt_generate_messages pkgInt_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/samuel/Documents/projetInt/src/pkgInt/srv/triangle.srv" NAME_WE)
add_dependencies(pkgInt_generate_messages_nodejs _pkgInt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkgInt_gennodejs)
add_dependencies(pkgInt_gennodejs pkgInt_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkgInt_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(pkgInt
  "/home/samuel/Documents/projetInt/src/pkgInt/srv/triangle.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkgInt
)

### Generating Module File
_generate_module_py(pkgInt
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkgInt
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pkgInt_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pkgInt_generate_messages pkgInt_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/samuel/Documents/projetInt/src/pkgInt/srv/triangle.srv" NAME_WE)
add_dependencies(pkgInt_generate_messages_py _pkgInt_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pkgInt_genpy)
add_dependencies(pkgInt_genpy pkgInt_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pkgInt_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkgInt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pkgInt
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pkgInt_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pkgInt_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkgInt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pkgInt
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(pkgInt_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pkgInt_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkgInt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pkgInt
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pkgInt_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pkgInt_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkgInt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pkgInt
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(pkgInt_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pkgInt_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkgInt)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkgInt\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pkgInt
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pkgInt_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pkgInt_generate_messages_py std_msgs_generate_messages_py)
endif()
