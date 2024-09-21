include(FixGeographiclibModulePath.cmake)
find_package(GeographicLib REQUIRED)
include(AddGeographiclibTarget.cmake)

include(GNUInstallDirs)
install(
  FILES
    FixGeographiclibModulePath.cmake
    AddGeographiclibTarget.cmake
  DESTINATION ${CMAKE_INSTALL_DATAROOTDIR}/${PROJECT_NAME}/cmake
)
