# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/samuel/Documents/projetInt/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/samuel/Documents/projetInt/build

# Include any dependencies generated for this target.
include capra_thermal/CMakeFiles/i2c.dir/depend.make

# Include the progress variables for this target.
include capra_thermal/CMakeFiles/i2c.dir/progress.make

# Include the compile flags for this target's objects.
include capra_thermal/CMakeFiles/i2c.dir/flags.make

capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.o: capra_thermal/CMakeFiles/i2c.dir/flags.make
capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.o: /home/samuel/Documents/projetInt/src/capra_thermal/src/I2C_Lepton/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/samuel/Documents/projetInt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.o"
	cd /home/samuel/Documents/projetInt/build/capra_thermal && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.o -c /home/samuel/Documents/projetInt/src/capra_thermal/src/I2C_Lepton/main.cpp

capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.i"
	cd /home/samuel/Documents/projetInt/build/capra_thermal && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/samuel/Documents/projetInt/src/capra_thermal/src/I2C_Lepton/main.cpp > CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.i

capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.s"
	cd /home/samuel/Documents/projetInt/build/capra_thermal && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/samuel/Documents/projetInt/src/capra_thermal/src/I2C_Lepton/main.cpp -o CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.s

capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.o.requires:

.PHONY : capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.o.requires

capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.o.provides: capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.o.requires
	$(MAKE) -f capra_thermal/CMakeFiles/i2c.dir/build.make capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.o.provides.build
.PHONY : capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.o.provides

capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.o.provides.build: capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.o


capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.o: capra_thermal/CMakeFiles/i2c.dir/flags.make
capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.o: /home/samuel/Documents/projetInt/src/capra_thermal/src/I2C_Lepton/I2C_Interface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/samuel/Documents/projetInt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.o"
	cd /home/samuel/Documents/projetInt/build/capra_thermal && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.o -c /home/samuel/Documents/projetInt/src/capra_thermal/src/I2C_Lepton/I2C_Interface.cpp

capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.i"
	cd /home/samuel/Documents/projetInt/build/capra_thermal && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/samuel/Documents/projetInt/src/capra_thermal/src/I2C_Lepton/I2C_Interface.cpp > CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.i

capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.s"
	cd /home/samuel/Documents/projetInt/build/capra_thermal && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/samuel/Documents/projetInt/src/capra_thermal/src/I2C_Lepton/I2C_Interface.cpp -o CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.s

capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.o.requires:

.PHONY : capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.o.requires

capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.o.provides: capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.o.requires
	$(MAKE) -f capra_thermal/CMakeFiles/i2c.dir/build.make capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.o.provides.build
.PHONY : capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.o.provides

capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.o.provides.build: capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.o


# Object files for target i2c
i2c_OBJECTS = \
"CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.o" \
"CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.o"

# External object files for target i2c
i2c_EXTERNAL_OBJECTS =

/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.o
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.o
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: capra_thermal/CMakeFiles/i2c.dir/build.make
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /opt/ros/kinetic/lib/libroscpp.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /opt/ros/kinetic/lib/librosconsole.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /opt/ros/kinetic/lib/librostime.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /opt/ros/kinetic/lib/libcpp_common.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c: capra_thermal/CMakeFiles/i2c.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/samuel/Documents/projetInt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c"
	cd /home/samuel/Documents/projetInt/build/capra_thermal && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/i2c.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
capra_thermal/CMakeFiles/i2c.dir/build: /home/samuel/Documents/projetInt/devel/lib/capra_thermal/i2c

.PHONY : capra_thermal/CMakeFiles/i2c.dir/build

capra_thermal/CMakeFiles/i2c.dir/requires: capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/main.cpp.o.requires
capra_thermal/CMakeFiles/i2c.dir/requires: capra_thermal/CMakeFiles/i2c.dir/src/I2C_Lepton/I2C_Interface.cpp.o.requires

.PHONY : capra_thermal/CMakeFiles/i2c.dir/requires

capra_thermal/CMakeFiles/i2c.dir/clean:
	cd /home/samuel/Documents/projetInt/build/capra_thermal && $(CMAKE_COMMAND) -P CMakeFiles/i2c.dir/cmake_clean.cmake
.PHONY : capra_thermal/CMakeFiles/i2c.dir/clean

capra_thermal/CMakeFiles/i2c.dir/depend:
	cd /home/samuel/Documents/projetInt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/samuel/Documents/projetInt/src /home/samuel/Documents/projetInt/src/capra_thermal /home/samuel/Documents/projetInt/build /home/samuel/Documents/projetInt/build/capra_thermal /home/samuel/Documents/projetInt/build/capra_thermal/CMakeFiles/i2c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : capra_thermal/CMakeFiles/i2c.dir/depend

