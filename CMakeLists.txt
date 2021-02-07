cmake_minimum_required(VERSION 3.19.4)

project(openGL_cherno)

# help vs code to find libraries, 
# add line to c_cpp_properties.json: "compileCommands": "${workspaceFolder}/build/compile_commands.json",
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

#Bring the headers into the project (include folder)
include_directories(include)
 
#Can manually add the sources using the set command as follows:
#set(SOURCES src/App.cpp)
#However, the file(GLOB...) allows for wildcard additions:
file(GLOB SOURCES "src/*.cpp")

# manually add libraries
#set(LIBRARIES "libs/GLFW/lib-macos/libglfw.3.dylib")
file(GLOB LIBRARIES "libs/GLFW/lib-macos/*.dylib" "libs/GLEW/lib/*.dylib")
message("LIBRARIES = ${LIBRARIES}")

# compiler stuff
add_definitions(-std=c++11)
set(CXX_FLAGS "-stdlib=libc++ -Wall -framework Cocoa -framework OpenGL -lGLEW")
set(CMAKE_CXX_FLAGS, "${CXX_FLAGS}")
message("FLAGS = ${CXX_FLAGS}")

# OpenGL
find_package(OpenGL REQUIRED)
include_directories(${OPENGL_INCLUDE_DIR})

find_package(GLUT REQUIRED)
include_directories(${GLUT_INCLUDE_DIR})


set(CMAKE_BUILD_TYPE Debug)
 
add_executable(openGL_cherno ${SOURCES})

target_link_libraries(openGL_cherno ${LIBRARIES} ${OPENGL_LIBRARIES} ${GLUT_LIBRARIES})  

target_include_directories(openGL_cherno PRIVATE ${CMAKE_SOURCE_DIR}/libs/GLFW/include
                                                 ${CMAKE_SOURCE_DIR}/libs/GLEW/include)