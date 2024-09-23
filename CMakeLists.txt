cmake_minimum_required(VERSION 3.22)
project(geographiclib_cmake_module NONE)

find_package(ament_cmake REQUIRED)

add_subdirectory(cmake)

ament_package(CONFIG_EXTRAS cmake/${PROJECT_NAME}-extras.cmake)

