set(CMAKE_AUTOMOC ON)
cmake_minimum_required(VERSION 3.10)
project(Babysitter)

set(CMAKE_CXX_STANDARD 14)

include_directories(library)

find_package(Qt5Widgets CONFIG REQUIRED)

add_executable(Babysitter
        library/Babysitter.h
        library/Childsitter.h
        library/Manager.h
        library/Order.h
        library/PartyOrganizer.h
        library/Sitter.h
        library/Tutor.h
        library/UI.h

        source/Babysitter.cpp
        source/Childsitter.cpp
        source/Manager.cpp
        source/Order.cpp
        source/PartyOrganizer.cpp
        source/Sitter.cpp
        source/Tutor.cpp
        source/UI.cpp
        main.cpp
        logs/babysitters.txt
        logs/childsitters.txt
        logs/tutors.txt
        logs/partyOrganizers.txt
        logs/calendar.txt
        )

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
