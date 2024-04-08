<<<<<<< HEAD
# Install script for directory: C:/Users/Cristian/Desktop/ProyectoMoviles/windows
=======
# Install script for directory: C:/Users/ASUS/Desktop/ProyectoMoviles/windows
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "$<TARGET_FILE_DIR:proyecto_moviles>")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
<<<<<<< HEAD
  include("C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/flutter/cmake_install.cmake")
=======
  include("C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/flutter/cmake_install.cmake")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
<<<<<<< HEAD
  include("C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/cmake_install.cmake")
=======
  include("C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/cmake_install.cmake")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
     "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/proyecto_moviles.exe")
=======
     "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/proyecto_moviles.exe")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug" TYPE EXECUTABLE FILES "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/proyecto_moviles.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/proyecto_moviles.exe")
=======
    file(INSTALL DESTINATION "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug" TYPE EXECUTABLE FILES "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/proyecto_moviles.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/proyecto_moviles.exe")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile" TYPE EXECUTABLE FILES "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/proyecto_moviles.exe")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/proyecto_moviles.exe")
=======
    file(INSTALL DESTINATION "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile" TYPE EXECUTABLE FILES "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/proyecto_moviles.exe")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/proyecto_moviles.exe")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Release" TYPE EXECUTABLE FILES "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/proyecto_moviles.exe")
=======
    file(INSTALL DESTINATION "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Release" TYPE EXECUTABLE FILES "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/proyecto_moviles.exe")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
     "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/data/icudtl.dat")
=======
     "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/data/icudtl.dat")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/data" TYPE FILE FILES "C:/Users/Cristian/Desktop/ProyectoMoviles/windows/flutter/ephemeral/icudtl.dat")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/data/icudtl.dat")
=======
    file(INSTALL DESTINATION "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/data" TYPE FILE FILES "C:/Users/ASUS/Desktop/ProyectoMoviles/windows/flutter/ephemeral/icudtl.dat")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/data/icudtl.dat")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/data" TYPE FILE FILES "C:/Users/Cristian/Desktop/ProyectoMoviles/windows/flutter/ephemeral/icudtl.dat")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/data/icudtl.dat")
=======
    file(INSTALL DESTINATION "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/data" TYPE FILE FILES "C:/Users/ASUS/Desktop/ProyectoMoviles/windows/flutter/ephemeral/icudtl.dat")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/data/icudtl.dat")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/data" TYPE FILE FILES "C:/Users/Cristian/Desktop/ProyectoMoviles/windows/flutter/ephemeral/icudtl.dat")
=======
    file(INSTALL DESTINATION "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/data" TYPE FILE FILES "C:/Users/ASUS/Desktop/ProyectoMoviles/windows/flutter/ephemeral/icudtl.dat")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
     "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/flutter_windows.dll")
=======
     "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/flutter_windows.dll")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug" TYPE FILE FILES "C:/Users/Cristian/Desktop/ProyectoMoviles/windows/flutter/ephemeral/flutter_windows.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/flutter_windows.dll")
=======
    file(INSTALL DESTINATION "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug" TYPE FILE FILES "C:/Users/ASUS/Desktop/ProyectoMoviles/windows/flutter/ephemeral/flutter_windows.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/flutter_windows.dll")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile" TYPE FILE FILES "C:/Users/Cristian/Desktop/ProyectoMoviles/windows/flutter/ephemeral/flutter_windows.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/flutter_windows.dll")
=======
    file(INSTALL DESTINATION "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile" TYPE FILE FILES "C:/Users/ASUS/Desktop/ProyectoMoviles/windows/flutter/ephemeral/flutter_windows.dll")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/flutter_windows.dll")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Release" TYPE FILE FILES "C:/Users/Cristian/Desktop/ProyectoMoviles/windows/flutter/ephemeral/flutter_windows.dll")
=======
    file(INSTALL DESTINATION "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Release" TYPE FILE FILES "C:/Users/ASUS/Desktop/ProyectoMoviles/windows/flutter/ephemeral/flutter_windows.dll")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
     "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/")
=======
     "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug" TYPE DIRECTORY FILES "C:/Users/Cristian/Desktop/ProyectoMoviles/build/native_assets/windows/")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/")
=======
    file(INSTALL DESTINATION "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug" TYPE DIRECTORY FILES "C:/Users/ASUS/Desktop/ProyectoMoviles/build/native_assets/windows/")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile" TYPE DIRECTORY FILES "C:/Users/Cristian/Desktop/ProyectoMoviles/build/native_assets/windows/")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/")
=======
    file(INSTALL DESTINATION "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile" TYPE DIRECTORY FILES "C:/Users/ASUS/Desktop/ProyectoMoviles/build/native_assets/windows/")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Release" TYPE DIRECTORY FILES "C:/Users/Cristian/Desktop/ProyectoMoviles/build/native_assets/windows/")
=======
    file(INSTALL DESTINATION "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Release" TYPE DIRECTORY FILES "C:/Users/ASUS/Desktop/ProyectoMoviles/build/native_assets/windows/")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    
<<<<<<< HEAD
  file(REMOVE_RECURSE "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/data/flutter_assets")
=======
  file(REMOVE_RECURSE "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/data/flutter_assets")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
  
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    
<<<<<<< HEAD
  file(REMOVE_RECURSE "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/data/flutter_assets")
=======
  file(REMOVE_RECURSE "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/data/flutter_assets")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
  
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    
<<<<<<< HEAD
  file(REMOVE_RECURSE "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/data/flutter_assets")
=======
  file(REMOVE_RECURSE "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/data/flutter_assets")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
  
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
     "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/data/flutter_assets")
=======
     "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/data/flutter_assets")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/data" TYPE DIRECTORY FILES "C:/Users/Cristian/Desktop/ProyectoMoviles/build//flutter_assets")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/data/flutter_assets")
=======
    file(INSTALL DESTINATION "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Debug/data" TYPE DIRECTORY FILES "C:/Users/ASUS/Desktop/ProyectoMoviles/build//flutter_assets")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/data/flutter_assets")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/data" TYPE DIRECTORY FILES "C:/Users/Cristian/Desktop/ProyectoMoviles/build//flutter_assets")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/data/flutter_assets")
=======
    file(INSTALL DESTINATION "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/data" TYPE DIRECTORY FILES "C:/Users/ASUS/Desktop/ProyectoMoviles/build//flutter_assets")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/data/flutter_assets")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/data" TYPE DIRECTORY FILES "C:/Users/Cristian/Desktop/ProyectoMoviles/build//flutter_assets")
=======
    file(INSTALL DESTINATION "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/data" TYPE DIRECTORY FILES "C:/Users/ASUS/Desktop/ProyectoMoviles/build//flutter_assets")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
<<<<<<< HEAD
     "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/data/app.so")
=======
     "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/data/app.so")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/data" TYPE FILE FILES "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/app.so")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/data/app.so")
=======
    file(INSTALL DESTINATION "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Profile/data" TYPE FILE FILES "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/app.so")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/data/app.so")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
<<<<<<< HEAD
file(INSTALL DESTINATION "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/data" TYPE FILE FILES "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/app.so")
=======
    file(INSTALL DESTINATION "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/runner/Release/data" TYPE FILE FILES "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/app.so")
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
<<<<<<< HEAD
file(WRITE "C:/Users/Cristian/Desktop/ProyectoMoviles/build/windows/x64/${CMAKE_INSTALL_MANIFEST}"
=======
file(WRITE "C:/Users/ASUS/Desktop/ProyectoMoviles/build/windows/x64/${CMAKE_INSTALL_MANIFEST}"
>>>>>>> 6957e129b7b762df690eb057bd027af0ca8d05c5
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
