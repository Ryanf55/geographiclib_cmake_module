include(CMakeFindDependencyMacro)
include(${CMAKE_CURRENT_LIST_DIR}/FixGeographiclibModulePath.cmake)
find_dependency(GeographicLib)
include(${CMAKE_CURRENT_LIST_DIR}/AddGeographiclibTarget.cmake)
