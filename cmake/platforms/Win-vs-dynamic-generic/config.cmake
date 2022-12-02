if(CMAKE_CL_64)
set(GEOGRAM_ARCH_64 true)
message(STATUS "Configuring 64 bits build")
else()
set(GEOGRAM_ARCH_32 true)
message(STATUS "Configuring 32 bits build")
endif()
set(GEOGRAM_BUILD_DYNAMIC true)
include(${GEOGRAM_SOURCE_DIR}/cmake/platforms/Windows-vs.cmake)


