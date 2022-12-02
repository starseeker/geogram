
add_subdirectory(geodump)

if(GEOGRAM_WITH_GRAPHICS)
  add_subdirectory(geobox)
  if(GEOGRAM_WITH_LUA)  
     add_subdirectory(geocod)
  endif()   
  add_subdirectory(geoshade)
endif()

if(GEOGRAM_WITH_FPG)
  add_subdirectory(fpg)
  add_subdirectory(pck)  
endif()
