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
CMAKE_SOURCE_DIR = /home/stz/sawyer-dynamics-identify-v1.1/examples/least_square_estimate

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stz/sawyer-dynamics-identify-v1.1/examples/least_square_estimate/build

# Include any dependencies generated for this target.
include CMakeFiles/least_square_estimate.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/least_square_estimate.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/least_square_estimate.dir/flags.make

CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.o: CMakeFiles/least_square_estimate.dir/flags.make
CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.o: ../src/deal_txt_data.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stz/sawyer-dynamics-identify-v1.1/examples/least_square_estimate/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.o -c /home/stz/sawyer-dynamics-identify-v1.1/examples/least_square_estimate/src/deal_txt_data.cpp

CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stz/sawyer-dynamics-identify-v1.1/examples/least_square_estimate/src/deal_txt_data.cpp > CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.i

CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stz/sawyer-dynamics-identify-v1.1/examples/least_square_estimate/src/deal_txt_data.cpp -o CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.s

CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.o.requires:

.PHONY : CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.o.requires

CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.o.provides: CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.o.requires
	$(MAKE) -f CMakeFiles/least_square_estimate.dir/build.make CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.o.provides.build
.PHONY : CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.o.provides

CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.o.provides.build: CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.o


CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.o: CMakeFiles/least_square_estimate.dir/flags.make
CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.o: ../src/least_square_estimate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stz/sawyer-dynamics-identify-v1.1/examples/least_square_estimate/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.o -c /home/stz/sawyer-dynamics-identify-v1.1/examples/least_square_estimate/src/least_square_estimate.cpp

CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stz/sawyer-dynamics-identify-v1.1/examples/least_square_estimate/src/least_square_estimate.cpp > CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.i

CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stz/sawyer-dynamics-identify-v1.1/examples/least_square_estimate/src/least_square_estimate.cpp -o CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.s

CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.o.requires:

.PHONY : CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.o.requires

CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.o.provides: CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.o.requires
	$(MAKE) -f CMakeFiles/least_square_estimate.dir/build.make CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.o.provides.build
.PHONY : CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.o.provides

CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.o.provides.build: CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.o


# Object files for target least_square_estimate
least_square_estimate_OBJECTS = \
"CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.o" \
"CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.o"

# External object files for target least_square_estimate
least_square_estimate_EXTERNAL_OBJECTS =

bin/least_square_estimate: CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.o
bin/least_square_estimate: CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.o
bin/least_square_estimate: CMakeFiles/least_square_estimate.dir/build.make
bin/least_square_estimate: CMakeFiles/least_square_estimate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stz/sawyer-dynamics-identify-v1.1/examples/least_square_estimate/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable bin/least_square_estimate"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/least_square_estimate.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/least_square_estimate.dir/build: bin/least_square_estimate

.PHONY : CMakeFiles/least_square_estimate.dir/build

CMakeFiles/least_square_estimate.dir/requires: CMakeFiles/least_square_estimate.dir/src/deal_txt_data.cpp.o.requires
CMakeFiles/least_square_estimate.dir/requires: CMakeFiles/least_square_estimate.dir/src/least_square_estimate.cpp.o.requires

.PHONY : CMakeFiles/least_square_estimate.dir/requires

CMakeFiles/least_square_estimate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/least_square_estimate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/least_square_estimate.dir/clean

CMakeFiles/least_square_estimate.dir/depend:
	cd /home/stz/sawyer-dynamics-identify-v1.1/examples/least_square_estimate/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stz/sawyer-dynamics-identify-v1.1/examples/least_square_estimate /home/stz/sawyer-dynamics-identify-v1.1/examples/least_square_estimate /home/stz/sawyer-dynamics-identify-v1.1/examples/least_square_estimate/build /home/stz/sawyer-dynamics-identify-v1.1/examples/least_square_estimate/build /home/stz/sawyer-dynamics-identify-v1.1/examples/least_square_estimate/build/CMakeFiles/least_square_estimate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/least_square_estimate.dir/depend

