# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /snap/clion/58/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/58/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/antoni/Desktop/projects/OOP_babysitter/Babysitter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug

# Utility rule file for testBabysitter_autogen.

# Include the progress variables for this target.
include CMakeFiles/testBabysitter_autogen.dir/progress.make

CMakeFiles/testBabysitter_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target testBabysitter"
	/snap/clion/58/bin/cmake/linux/bin/cmake -E cmake_autogen /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/CMakeFiles/testBabysitter_autogen.dir/AutogenInfo.cmake Debug

testBabysitter_autogen: CMakeFiles/testBabysitter_autogen
testBabysitter_autogen: CMakeFiles/testBabysitter_autogen.dir/build.make

.PHONY : testBabysitter_autogen

# Rule to build all files generated by this target.
CMakeFiles/testBabysitter_autogen.dir/build: testBabysitter_autogen

.PHONY : CMakeFiles/testBabysitter_autogen.dir/build

CMakeFiles/testBabysitter_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testBabysitter_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testBabysitter_autogen.dir/clean

CMakeFiles/testBabysitter_autogen.dir/depend:
	cd /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/antoni/Desktop/projects/OOP_babysitter/Babysitter /home/antoni/Desktop/projects/OOP_babysitter/Babysitter /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/CMakeFiles/testBabysitter_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testBabysitter_autogen.dir/depend

