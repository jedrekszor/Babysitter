cmake_minimum_required(VERSION 3.13)
project(Babysitter)

set(CMAKE_CXX_STANDARD 14)

add_executable(Babysitter main.cpp source/Sitter.cpp library/Sitter.h source/Order.cpp library/Order.h source/Manager.cpp library/Manager.h source/Babysitter.cpp library/Babysitter.h source/Childsitter.cpp library/Childsitter.h source/Tutor.cpp library/Tutor.h source/PartyOrganizer.cpp library/PartyOrganizer.h)


# Find includes in corresponding build directories
set(CMAKE_INCLUDE_CURRENT_DIR ON)
# Instruct CMake to run moc automatically when needed
set(CMAKE_AUTOMOC ON)
# Create code from a list of Qt designer ui files
set(CMAKE_AUTOUIC ON)

# Find the QtWidgets library
find_package(Qt5Widgets CONFIG REQUIRED)

# Use the Widgets module from Qt 5
target_link_libraries(Babysitter Qt5::Widgets)

find_package(Qt5Core)

get_target_property(QtCore_location Qt5::Core LOCATION)

find_package(Qt5Core)

set(CMAKE_CXX_FLAGS_COVERAGE "${CMAKE_CXX_FLAGS_RELEASE} -fprofile-arcs -ftest-coverage")

# set up a mapping so that the Release configuration for the Qt imported target is
# used in the COVERAGE CMake configuration.
set_target_properties(Qt5::Core PROPERTIES MAP_IMPORTED_CONFIG_COVERAGE "RELEASE")

foreach(plugin ${Qt5Network_PLUGINS})
    get_target_property(_loc ${plugin} LOCATION)
    message("Plugin ${plugin} is at location ${_loc}")
endforeach()