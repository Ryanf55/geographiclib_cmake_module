# This script adds a Geographiclib::GeographicLib target for older versions of GeographicLib.

# libgeographic-dev 1.52 does not expose a target, so create it here.
if(NOT TARGET GeographicLib::GeographicLib)
  add_library(GeographicLib::GeographicLib UNKNOWN IMPORTED)

  # if(NOT "${GeographicLib_INCLUDE_DIR}")
  #   message(FATAL_ERROR "The geographiclib variable GeographicLib_INCLUDE_DIR does not exist!")
  # endif()

  # if(NOT "${GeographicLib_LIBRARIES}")
  #   message(FATAL_ERROR "The geographiclib variable GeographicLib_LIBRARIES does not exist!")
  # endif()
  set_target_properties(GeographicLib::GeographicLib PROPERTIES
    IMPORTED_LINK_INTERFACE_LANGUAGES "CXX"
    IMPORTED_LOCATION "${GeographicLib_LIBRARIES}"
    INTERFACE_INCLUDE_DIRECTORIES "${GeographicLib_INCLUDE_DIR}"
  )
endif()