set(CMAKE_AUTOMOC ON)
cmake_minimum_required(VERSION 3.10)
project(Babysitter)

set(CMAKE_CXX_STANDARD 14)

find_package(Qt5Widgets)
find_package(Qt5Core)

set(SOURCE_FILES
        library/source/Babysitter.cpp
        library/source/Childsitter.cpp
        library/source/Manager.cpp
        library/source/Order.cpp
        library/source/PartyOrganizer.cpp
        library/source/Sitter.cpp
        library/source/Tutor.cpp
        library/source/UI.cpp)

set(INCLUDE_FILES
        library/include/Babysitter.h
        library/include/Childsitter.h
        library/include/Manager.h
        library/include/Order.h
        library/include/PartyOrganizer.h
        library/include/Sitter.h
        library/include/Tutor.h
        library/include/UI.h)

set(LOGS_FILES
        program/logs/babysitters.txt
        program/logs/childsitters.txt
        program/logs/tutors.txt
        program/logs/partyOrganizers.txt
        program/logs/calendar.txt)

set(TEST_FILES
        library/test/master.cpp
        library/test/testManager.cpp)

add_executable(Babysitter

        program/main.cpp
        ${SOURCE_FILES}
        ${INCLUDE_FILES}
        ${LOGS_FILES}
#        ${TEST_FILES}
        )

target_link_libraries(Babysitter Qt5::Widgets Qt5::Core)
get_target_property(QtCore_location Qt5::Core LOCATION)

set(CMAKE_CXX_FLAGS_COVERAGE "${CMAKE_CXX_FLAGS_RELEASE} -fprofile-arcs -ftest-coverage")

# set up a mapping so that the Release configuration for the Qt imported target is
# used in the COVERAGE CMake configuration.
set_target_properties(Qt5::Core PROPERTIES MAP_IMPORTED_CONFIG_COVERAGE "RELEASE")

foreach(plugin ${Qt5Network_PLUGINS})
    get_target_property(_loc ${plugin} LOCATION)
    message("Plugin ${plugin} is at location ${_loc}")
endforeach()

enable_testing(true)
find_package (Boost 1.60.0 COMPONENTS "unit_test_framework" REQUIRED)

include_directories(${Boost_INCLUDE_DIRS})

add_executable(TestBabysitter

        ${SOURCE_FILES}
        ${INCLUDE_FILES}
        ${LOGS_FILES}
        ${TEST_FILES})

target_link_libraries (TestBabysitter
        ${Boost_UNIT_TEST_FRAMEWORK_LIBRARY}
        Qt5::Widgets Qt5::Core)