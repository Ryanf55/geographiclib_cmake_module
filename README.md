# geographiclib_cmake_module

Expose CMake targets from older geographiclib libraries for Ubuntu Jammy.
This accounts for
[an upstream bug](https://bugs.launchpad.net/ubuntu/+source/geographiclib/+bug/1805173). 

## Usage

Declare a dependency on your package.xml on geographiclib_cmake_module:
```xml
<depend>geographiclib_cmake_module</depend>
```

Find it in CMake and link to it.
```cmake
# Find geographiclib_cmake_module, which creates a CMake target if it doesn't exist.
find_package(geographiclib_cmake_module REQUIRED)

# Link the target to your library.
target_link_libraries(MyLibrary PUBLIC GeographicLib::GeographicLib)

# Export your dependencies
ament_export_targets(export_${PROJECT_NAME} HAS_LIBRARY_TARGET)
ament_export_dependencies(geographiclib_cmake_module)
```

