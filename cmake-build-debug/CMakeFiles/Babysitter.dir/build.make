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
CMAKE_COMMAND = /snap/clion/57/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/57/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jedrek/Desktop/Babysitter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jedrek/Desktop/Babysitter/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Babysitter.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Babysitter.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Babysitter.dir/flags.make

CMakeFiles/Babysitter.dir/main.cpp.o: CMakeFiles/Babysitter.dir/flags.make
CMakeFiles/Babysitter.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jedrek/Desktop/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Babysitter.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Babysitter.dir/main.cpp.o -c /home/jedrek/Desktop/Babysitter/main.cpp

CMakeFiles/Babysitter.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Babysitter.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jedrek/Desktop/Babysitter/main.cpp > CMakeFiles/Babysitter.dir/main.cpp.i

CMakeFiles/Babysitter.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Babysitter.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jedrek/Desktop/Babysitter/main.cpp -o CMakeFiles/Babysitter.dir/main.cpp.s

CMakeFiles/Babysitter.dir/source/Sitter.cpp.o: CMakeFiles/Babysitter.dir/flags.make
CMakeFiles/Babysitter.dir/source/Sitter.cpp.o: ../source/Sitter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jedrek/Desktop/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Babysitter.dir/source/Sitter.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Babysitter.dir/source/Sitter.cpp.o -c /home/jedrek/Desktop/Babysitter/source/Sitter.cpp

CMakeFiles/Babysitter.dir/source/Sitter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Babysitter.dir/source/Sitter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jedrek/Desktop/Babysitter/source/Sitter.cpp > CMakeFiles/Babysitter.dir/source/Sitter.cpp.i

CMakeFiles/Babysitter.dir/source/Sitter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Babysitter.dir/source/Sitter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jedrek/Desktop/Babysitter/source/Sitter.cpp -o CMakeFiles/Babysitter.dir/source/Sitter.cpp.s

CMakeFiles/Babysitter.dir/source/Order.cpp.o: CMakeFiles/Babysitter.dir/flags.make
CMakeFiles/Babysitter.dir/source/Order.cpp.o: ../source/Order.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jedrek/Desktop/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Babysitter.dir/source/Order.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Babysitter.dir/source/Order.cpp.o -c /home/jedrek/Desktop/Babysitter/source/Order.cpp

CMakeFiles/Babysitter.dir/source/Order.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Babysitter.dir/source/Order.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jedrek/Desktop/Babysitter/source/Order.cpp > CMakeFiles/Babysitter.dir/source/Order.cpp.i

CMakeFiles/Babysitter.dir/source/Order.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Babysitter.dir/source/Order.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jedrek/Desktop/Babysitter/source/Order.cpp -o CMakeFiles/Babysitter.dir/source/Order.cpp.s

CMakeFiles/Babysitter.dir/source/Manager.cpp.o: CMakeFiles/Babysitter.dir/flags.make
CMakeFiles/Babysitter.dir/source/Manager.cpp.o: ../source/Manager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jedrek/Desktop/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Babysitter.dir/source/Manager.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Babysitter.dir/source/Manager.cpp.o -c /home/jedrek/Desktop/Babysitter/source/Manager.cpp

CMakeFiles/Babysitter.dir/source/Manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Babysitter.dir/source/Manager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jedrek/Desktop/Babysitter/source/Manager.cpp > CMakeFiles/Babysitter.dir/source/Manager.cpp.i

CMakeFiles/Babysitter.dir/source/Manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Babysitter.dir/source/Manager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jedrek/Desktop/Babysitter/source/Manager.cpp -o CMakeFiles/Babysitter.dir/source/Manager.cpp.s

CMakeFiles/Babysitter.dir/source/Babysitter.cpp.o: CMakeFiles/Babysitter.dir/flags.make
CMakeFiles/Babysitter.dir/source/Babysitter.cpp.o: ../source/Babysitter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jedrek/Desktop/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Babysitter.dir/source/Babysitter.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Babysitter.dir/source/Babysitter.cpp.o -c /home/jedrek/Desktop/Babysitter/source/Babysitter.cpp

CMakeFiles/Babysitter.dir/source/Babysitter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Babysitter.dir/source/Babysitter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jedrek/Desktop/Babysitter/source/Babysitter.cpp > CMakeFiles/Babysitter.dir/source/Babysitter.cpp.i

CMakeFiles/Babysitter.dir/source/Babysitter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Babysitter.dir/source/Babysitter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jedrek/Desktop/Babysitter/source/Babysitter.cpp -o CMakeFiles/Babysitter.dir/source/Babysitter.cpp.s

CMakeFiles/Babysitter.dir/source/Childsitter.cpp.o: CMakeFiles/Babysitter.dir/flags.make
CMakeFiles/Babysitter.dir/source/Childsitter.cpp.o: ../source/Childsitter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jedrek/Desktop/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Babysitter.dir/source/Childsitter.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Babysitter.dir/source/Childsitter.cpp.o -c /home/jedrek/Desktop/Babysitter/source/Childsitter.cpp

CMakeFiles/Babysitter.dir/source/Childsitter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Babysitter.dir/source/Childsitter.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jedrek/Desktop/Babysitter/source/Childsitter.cpp > CMakeFiles/Babysitter.dir/source/Childsitter.cpp.i

CMakeFiles/Babysitter.dir/source/Childsitter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Babysitter.dir/source/Childsitter.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jedrek/Desktop/Babysitter/source/Childsitter.cpp -o CMakeFiles/Babysitter.dir/source/Childsitter.cpp.s

CMakeFiles/Babysitter.dir/source/Tutor.cpp.o: CMakeFiles/Babysitter.dir/flags.make
CMakeFiles/Babysitter.dir/source/Tutor.cpp.o: ../source/Tutor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jedrek/Desktop/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Babysitter.dir/source/Tutor.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Babysitter.dir/source/Tutor.cpp.o -c /home/jedrek/Desktop/Babysitter/source/Tutor.cpp

CMakeFiles/Babysitter.dir/source/Tutor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Babysitter.dir/source/Tutor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jedrek/Desktop/Babysitter/source/Tutor.cpp > CMakeFiles/Babysitter.dir/source/Tutor.cpp.i

CMakeFiles/Babysitter.dir/source/Tutor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Babysitter.dir/source/Tutor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jedrek/Desktop/Babysitter/source/Tutor.cpp -o CMakeFiles/Babysitter.dir/source/Tutor.cpp.s

CMakeFiles/Babysitter.dir/source/PartyOrganizer.cpp.o: CMakeFiles/Babysitter.dir/flags.make
CMakeFiles/Babysitter.dir/source/PartyOrganizer.cpp.o: ../source/PartyOrganizer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jedrek/Desktop/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Babysitter.dir/source/PartyOrganizer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Babysitter.dir/source/PartyOrganizer.cpp.o -c /home/jedrek/Desktop/Babysitter/source/PartyOrganizer.cpp

CMakeFiles/Babysitter.dir/source/PartyOrganizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Babysitter.dir/source/PartyOrganizer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jedrek/Desktop/Babysitter/source/PartyOrganizer.cpp > CMakeFiles/Babysitter.dir/source/PartyOrganizer.cpp.i

CMakeFiles/Babysitter.dir/source/PartyOrganizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Babysitter.dir/source/PartyOrganizer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jedrek/Desktop/Babysitter/source/PartyOrganizer.cpp -o CMakeFiles/Babysitter.dir/source/PartyOrganizer.cpp.s

# Object files for target Babysitter
Babysitter_OBJECTS = \
"CMakeFiles/Babysitter.dir/main.cpp.o" \
"CMakeFiles/Babysitter.dir/source/Sitter.cpp.o" \
"CMakeFiles/Babysitter.dir/source/Order.cpp.o" \
"CMakeFiles/Babysitter.dir/source/Manager.cpp.o" \
"CMakeFiles/Babysitter.dir/source/Babysitter.cpp.o" \
"CMakeFiles/Babysitter.dir/source/Childsitter.cpp.o" \
"CMakeFiles/Babysitter.dir/source/Tutor.cpp.o" \
"CMakeFiles/Babysitter.dir/source/PartyOrganizer.cpp.o"

# External object files for target Babysitter
Babysitter_EXTERNAL_OBJECTS =

Babysitter: CMakeFiles/Babysitter.dir/main.cpp.o
Babysitter: CMakeFiles/Babysitter.dir/source/Sitter.cpp.o
Babysitter: CMakeFiles/Babysitter.dir/source/Order.cpp.o
Babysitter: CMakeFiles/Babysitter.dir/source/Manager.cpp.o
Babysitter: CMakeFiles/Babysitter.dir/source/Babysitter.cpp.o
Babysitter: CMakeFiles/Babysitter.dir/source/Childsitter.cpp.o
Babysitter: CMakeFiles/Babysitter.dir/source/Tutor.cpp.o
Babysitter: CMakeFiles/Babysitter.dir/source/PartyOrganizer.cpp.o
Babysitter: CMakeFiles/Babysitter.dir/build.make
Babysitter: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.9.5
Babysitter: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.9.5
Babysitter: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.9.5
Babysitter: CMakeFiles/Babysitter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jedrek/Desktop/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable Babysitter"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Babysitter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Babysitter.dir/build: Babysitter

.PHONY : CMakeFiles/Babysitter.dir/build

CMakeFiles/Babysitter.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Babysitter.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Babysitter.dir/clean

CMakeFiles/Babysitter.dir/depend:
	cd /home/jedrek/Desktop/Babysitter/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jedrek/Desktop/Babysitter /home/jedrek/Desktop/Babysitter /home/jedrek/Desktop/Babysitter/cmake-build-debug /home/jedrek/Desktop/Babysitter/cmake-build-debug /home/jedrek/Desktop/Babysitter/cmake-build-debug/CMakeFiles/Babysitter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Babysitter.dir/depend

