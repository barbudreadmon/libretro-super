set(CMAKE_C_COMPILER "arm-vita-eabi-gcc")
set(CMAKE_CXX_COMPILER "arm-vita-eabi-g++")
set(CMAKE_AR "arm-vita-eabi-ar")

# Workaround for old cmake. Remove when we update cmake
set(CMAKE_C_ARCHIVE_CREATE "${CMAKE_AR} qc <TARGET> <LINK_FLAGS> <OBJECTS>")
set(CMAKE_CXX_ARCHIVE_CREATE "${CMAKE_AR} qc <TARGET> <LINK_FLAGS> <OBJECTS>")
set(CMAKE_C_CREATE_STATIC_LIBRARY "${CMAKE_AR} qc <TARGET> <LINK_FLAGS> <OBJECTS>")
set(CMAKE_CXX_CREATE_STATIC_LIBRARY "${CMAKE_AR} qc <TARGET> <LINK_FLAGS> <OBJECTS>")

set(CMAKE_RANLIB "arm-vita-eabi-ranlib")
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_CROSSCOMPILING ON)
set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set(CMAKE_C_LINK_FLAGS "")
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

add_definitions(-DVITA -D_VITA)
set(BUILD_SHARED_LIBS OFF CACHE INTERNAL "Shared libs not available" )
set(CMAKE_POSITION_INDEPENDENT_CODE OFF)