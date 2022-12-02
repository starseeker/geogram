
# Sets the CACHE variable GEOGRAM_PLATFORM based on the detected operating system.
#
# Note that it would be better to use CMAKE_SYSTEM_NAME directly, and use other CMake
# variables to enable other build-specific flags, e.g.:
# - Use BUILD_SHARED_LIBS to enable behavior specific to shared libs
# - Use CheckCXXCompilerFlag to enable compiler-specific flags
#
if(CMAKE_SYSTEM_NAME MATCHES Linux)
    if(CMAKE_CXX_COMPILER_ID MATCHES "GNU")
        set(GEOGRAM_PLATFORM "Linux64-gcc-dynamic" CACHE STRING "")
    elseif(CMAKE_CXX_COMPILER_ID MATCHES "Clang")
        set(GEOGRAM_PLATFORM "Linux64-clang-dynamic" CACHE STRING "")
    endif()
elseif(CMAKE_SYSTEM_NAME MATCHES Darwin)
    set(GEOGRAM_PLATFORM "Darwin-clang-dynamic" CACHE STRING "")
elseif(CMAKE_SYSTEM_NAME MATCHES Windows)
    set(GEOGRAM_PLATFORM "Win-vs-generic" CACHE STRING "")
elseif(CMAKE_SYSTEM_NAME MATCHES Android)
    set(GEOGRAM_PLATFORM "Android-aarch64-gcc-dynamic" CACHE STRING "")
endif()
