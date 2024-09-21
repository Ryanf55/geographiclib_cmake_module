if(CMAKE_SYSTEM_NAME STREQUAL Linux)
    list(APPEND CMAKE_MODULE_PATH "/usr/share/cmake/geographiclib")
    list(REMOVE_DUPLICATES ${CMAKE_MODULE_PATH})
endif()
