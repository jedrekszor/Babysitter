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

# Include any dependencies generated for this target.
include CMakeFiles/SimpleApp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SimpleApp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SimpleApp.dir/flags.make

CMakeFiles/SimpleApp.dir/library/test/master.cpp.o: CMakeFiles/SimpleApp.dir/flags.make
CMakeFiles/SimpleApp.dir/library/test/master.cpp.o: ../library/test/master.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SimpleApp.dir/library/test/master.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleApp.dir/library/test/master.cpp.o -c /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/test/master.cpp

CMakeFiles/SimpleApp.dir/library/test/master.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleApp.dir/library/test/master.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/test/master.cpp > CMakeFiles/SimpleApp.dir/library/test/master.cpp.i

CMakeFiles/SimpleApp.dir/library/test/master.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleApp.dir/library/test/master.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/test/master.cpp -o CMakeFiles/SimpleApp.dir/library/test/master.cpp.s

CMakeFiles/SimpleApp.dir/library/test/testManager.cpp.o: CMakeFiles/SimpleApp.dir/flags.make
CMakeFiles/SimpleApp.dir/library/test/testManager.cpp.o: ../library/test/testManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SimpleApp.dir/library/test/testManager.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleApp.dir/library/test/testManager.cpp.o -c /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/test/testManager.cpp

CMakeFiles/SimpleApp.dir/library/test/testManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleApp.dir/library/test/testManager.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/test/testManager.cpp > CMakeFiles/SimpleApp.dir/library/test/testManager.cpp.i

CMakeFiles/SimpleApp.dir/library/test/testManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleApp.dir/library/test/testManager.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/test/testManager.cpp -o CMakeFiles/SimpleApp.dir/library/test/testManager.cpp.s

CMakeFiles/SimpleApp.dir/library/source/Babysitter.cpp.o: CMakeFiles/SimpleApp.dir/flags.make
CMakeFiles/SimpleApp.dir/library/source/Babysitter.cpp.o: ../library/source/Babysitter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SimpleApp.dir/library/source/Babysitter.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleApp.dir/library/source/Babysitter.cpp.o -c /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Babysitter.cpp

CMakeFiles/SimpleApp.dir/library/source/Babysitter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleApp.dir/library/source/Babysitter.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Babysitter.cpp > CMakeFiles/SimpleApp.dir/library/source/Babysitter.cpp.i

CMakeFiles/SimpleApp.dir/library/source/Babysitter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleApp.dir/library/source/Babysitter.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Babysitter.cpp -o CMakeFiles/SimpleApp.dir/library/source/Babysitter.cpp.s

CMakeFiles/SimpleApp.dir/library/source/Childsitter.cpp.o: CMakeFiles/SimpleApp.dir/flags.make
CMakeFiles/SimpleApp.dir/library/source/Childsitter.cpp.o: ../library/source/Childsitter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SimpleApp.dir/library/source/Childsitter.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleApp.dir/library/source/Childsitter.cpp.o -c /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Childsitter.cpp

CMakeFiles/SimpleApp.dir/library/source/Childsitter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleApp.dir/library/source/Childsitter.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Childsitter.cpp > CMakeFiles/SimpleApp.dir/library/source/Childsitter.cpp.i

CMakeFiles/SimpleApp.dir/library/source/Childsitter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleApp.dir/library/source/Childsitter.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Childsitter.cpp -o CMakeFiles/SimpleApp.dir/library/source/Childsitter.cpp.s

CMakeFiles/SimpleApp.dir/library/source/Manager.cpp.o: CMakeFiles/SimpleApp.dir/flags.make
CMakeFiles/SimpleApp.dir/library/source/Manager.cpp.o: ../library/source/Manager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/SimpleApp.dir/library/source/Manager.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleApp.dir/library/source/Manager.cpp.o -c /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Manager.cpp

CMakeFiles/SimpleApp.dir/library/source/Manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleApp.dir/library/source/Manager.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Manager.cpp > CMakeFiles/SimpleApp.dir/library/source/Manager.cpp.i

CMakeFiles/SimpleApp.dir/library/source/Manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleApp.dir/library/source/Manager.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Manager.cpp -o CMakeFiles/SimpleApp.dir/library/source/Manager.cpp.s

CMakeFiles/SimpleApp.dir/library/source/Order.cpp.o: CMakeFiles/SimpleApp.dir/flags.make
CMakeFiles/SimpleApp.dir/library/source/Order.cpp.o: ../library/source/Order.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/SimpleApp.dir/library/source/Order.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleApp.dir/library/source/Order.cpp.o -c /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Order.cpp

CMakeFiles/SimpleApp.dir/library/source/Order.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleApp.dir/library/source/Order.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Order.cpp > CMakeFiles/SimpleApp.dir/library/source/Order.cpp.i

CMakeFiles/SimpleApp.dir/library/source/Order.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleApp.dir/library/source/Order.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Order.cpp -o CMakeFiles/SimpleApp.dir/library/source/Order.cpp.s

CMakeFiles/SimpleApp.dir/library/source/PartyOrganizer.cpp.o: CMakeFiles/SimpleApp.dir/flags.make
CMakeFiles/SimpleApp.dir/library/source/PartyOrganizer.cpp.o: ../library/source/PartyOrganizer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/SimpleApp.dir/library/source/PartyOrganizer.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleApp.dir/library/source/PartyOrganizer.cpp.o -c /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/PartyOrganizer.cpp

CMakeFiles/SimpleApp.dir/library/source/PartyOrganizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleApp.dir/library/source/PartyOrganizer.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/PartyOrganizer.cpp > CMakeFiles/SimpleApp.dir/library/source/PartyOrganizer.cpp.i

CMakeFiles/SimpleApp.dir/library/source/PartyOrganizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleApp.dir/library/source/PartyOrganizer.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/PartyOrganizer.cpp -o CMakeFiles/SimpleApp.dir/library/source/PartyOrganizer.cpp.s

CMakeFiles/SimpleApp.dir/library/source/Sitter.cpp.o: CMakeFiles/SimpleApp.dir/flags.make
CMakeFiles/SimpleApp.dir/library/source/Sitter.cpp.o: ../library/source/Sitter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/SimpleApp.dir/library/source/Sitter.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleApp.dir/library/source/Sitter.cpp.o -c /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Sitter.cpp

CMakeFiles/SimpleApp.dir/library/source/Sitter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleApp.dir/library/source/Sitter.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Sitter.cpp > CMakeFiles/SimpleApp.dir/library/source/Sitter.cpp.i

CMakeFiles/SimpleApp.dir/library/source/Sitter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleApp.dir/library/source/Sitter.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Sitter.cpp -o CMakeFiles/SimpleApp.dir/library/source/Sitter.cpp.s

CMakeFiles/SimpleApp.dir/library/source/Tutor.cpp.o: CMakeFiles/SimpleApp.dir/flags.make
CMakeFiles/SimpleApp.dir/library/source/Tutor.cpp.o: ../library/source/Tutor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/SimpleApp.dir/library/source/Tutor.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleApp.dir/library/source/Tutor.cpp.o -c /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Tutor.cpp

CMakeFiles/SimpleApp.dir/library/source/Tutor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleApp.dir/library/source/Tutor.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Tutor.cpp > CMakeFiles/SimpleApp.dir/library/source/Tutor.cpp.i

CMakeFiles/SimpleApp.dir/library/source/Tutor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleApp.dir/library/source/Tutor.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/Tutor.cpp -o CMakeFiles/SimpleApp.dir/library/source/Tutor.cpp.s

CMakeFiles/SimpleApp.dir/library/source/UI.cpp.o: CMakeFiles/SimpleApp.dir/flags.make
CMakeFiles/SimpleApp.dir/library/source/UI.cpp.o: ../library/source/UI.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/SimpleApp.dir/library/source/UI.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleApp.dir/library/source/UI.cpp.o -c /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/UI.cpp

CMakeFiles/SimpleApp.dir/library/source/UI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleApp.dir/library/source/UI.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/UI.cpp > CMakeFiles/SimpleApp.dir/library/source/UI.cpp.i

CMakeFiles/SimpleApp.dir/library/source/UI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleApp.dir/library/source/UI.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/library/source/UI.cpp -o CMakeFiles/SimpleApp.dir/library/source/UI.cpp.s

CMakeFiles/SimpleApp.dir/program/main.cpp.o: CMakeFiles/SimpleApp.dir/flags.make
CMakeFiles/SimpleApp.dir/program/main.cpp.o: ../program/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/SimpleApp.dir/program/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleApp.dir/program/main.cpp.o -c /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/program/main.cpp

CMakeFiles/SimpleApp.dir/program/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleApp.dir/program/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/program/main.cpp > CMakeFiles/SimpleApp.dir/program/main.cpp.i

CMakeFiles/SimpleApp.dir/program/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleApp.dir/program/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/program/main.cpp -o CMakeFiles/SimpleApp.dir/program/main.cpp.s

CMakeFiles/SimpleApp.dir/SimpleApp_autogen/mocs_compilation.cpp.o: CMakeFiles/SimpleApp.dir/flags.make
CMakeFiles/SimpleApp.dir/SimpleApp_autogen/mocs_compilation.cpp.o: SimpleApp_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/SimpleApp.dir/SimpleApp_autogen/mocs_compilation.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleApp.dir/SimpleApp_autogen/mocs_compilation.cpp.o -c /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/SimpleApp_autogen/mocs_compilation.cpp

CMakeFiles/SimpleApp.dir/SimpleApp_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleApp.dir/SimpleApp_autogen/mocs_compilation.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/SimpleApp_autogen/mocs_compilation.cpp > CMakeFiles/SimpleApp.dir/SimpleApp_autogen/mocs_compilation.cpp.i

CMakeFiles/SimpleApp.dir/SimpleApp_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleApp.dir/SimpleApp_autogen/mocs_compilation.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/SimpleApp_autogen/mocs_compilation.cpp -o CMakeFiles/SimpleApp.dir/SimpleApp_autogen/mocs_compilation.cpp.s

# Object files for target SimpleApp
SimpleApp_OBJECTS = \
"CMakeFiles/SimpleApp.dir/library/test/master.cpp.o" \
"CMakeFiles/SimpleApp.dir/library/test/testManager.cpp.o" \
"CMakeFiles/SimpleApp.dir/library/source/Babysitter.cpp.o" \
"CMakeFiles/SimpleApp.dir/library/source/Childsitter.cpp.o" \
"CMakeFiles/SimpleApp.dir/library/source/Manager.cpp.o" \
"CMakeFiles/SimpleApp.dir/library/source/Order.cpp.o" \
"CMakeFiles/SimpleApp.dir/library/source/PartyOrganizer.cpp.o" \
"CMakeFiles/SimpleApp.dir/library/source/Sitter.cpp.o" \
"CMakeFiles/SimpleApp.dir/library/source/Tutor.cpp.o" \
"CMakeFiles/SimpleApp.dir/library/source/UI.cpp.o" \
"CMakeFiles/SimpleApp.dir/program/main.cpp.o" \
"CMakeFiles/SimpleApp.dir/SimpleApp_autogen/mocs_compilation.cpp.o"

# External object files for target SimpleApp
SimpleApp_EXTERNAL_OBJECTS =

SimpleApp: CMakeFiles/SimpleApp.dir/library/test/master.cpp.o
SimpleApp: CMakeFiles/SimpleApp.dir/library/test/testManager.cpp.o
SimpleApp: CMakeFiles/SimpleApp.dir/library/source/Babysitter.cpp.o
SimpleApp: CMakeFiles/SimpleApp.dir/library/source/Childsitter.cpp.o
SimpleApp: CMakeFiles/SimpleApp.dir/library/source/Manager.cpp.o
SimpleApp: CMakeFiles/SimpleApp.dir/library/source/Order.cpp.o
SimpleApp: CMakeFiles/SimpleApp.dir/library/source/PartyOrganizer.cpp.o
SimpleApp: CMakeFiles/SimpleApp.dir/library/source/Sitter.cpp.o
SimpleApp: CMakeFiles/SimpleApp.dir/library/source/Tutor.cpp.o
SimpleApp: CMakeFiles/SimpleApp.dir/library/source/UI.cpp.o
SimpleApp: CMakeFiles/SimpleApp.dir/program/main.cpp.o
SimpleApp: CMakeFiles/SimpleApp.dir/SimpleApp_autogen/mocs_compilation.cpp.o
SimpleApp: CMakeFiles/SimpleApp.dir/build.make
SimpleApp: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.9.5
SimpleApp: /usr/lib/x86_64-linux-gnu/libboost_signals.so
SimpleApp: /usr/lib/x86_64-linux-gnu/libboost_system.so
SimpleApp: /usr/lib/x86_64-linux-gnu/libboost_thread.so
SimpleApp: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
SimpleApp: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
SimpleApp: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
SimpleApp: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.9.5
SimpleApp: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.9.5
SimpleApp: CMakeFiles/SimpleApp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable SimpleApp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SimpleApp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SimpleApp.dir/build: SimpleApp

.PHONY : CMakeFiles/SimpleApp.dir/build

CMakeFiles/SimpleApp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SimpleApp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SimpleApp.dir/clean

CMakeFiles/SimpleApp.dir/depend:
	cd /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/antoni/Desktop/projects/OOP_babysitter/Babysitter /home/antoni/Desktop/projects/OOP_babysitter/Babysitter /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug /home/antoni/Desktop/projects/OOP_babysitter/Babysitter/cmake-build-debug/CMakeFiles/SimpleApp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SimpleApp.dir/depend

