# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/markussalm/dev/openGL_cherno

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/markussalm/dev/openGL_cherno/build

# Include any dependencies generated for this target.
include CMakeFiles/openGL_cherno.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/openGL_cherno.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/openGL_cherno.dir/flags.make

CMakeFiles/openGL_cherno.dir/src/App.cpp.o: CMakeFiles/openGL_cherno.dir/flags.make
CMakeFiles/openGL_cherno.dir/src/App.cpp.o: ../src/App.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/markussalm/dev/openGL_cherno/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/openGL_cherno.dir/src/App.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openGL_cherno.dir/src/App.cpp.o -c /Users/markussalm/dev/openGL_cherno/src/App.cpp

CMakeFiles/openGL_cherno.dir/src/App.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openGL_cherno.dir/src/App.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/markussalm/dev/openGL_cherno/src/App.cpp > CMakeFiles/openGL_cherno.dir/src/App.cpp.i

CMakeFiles/openGL_cherno.dir/src/App.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openGL_cherno.dir/src/App.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/markussalm/dev/openGL_cherno/src/App.cpp -o CMakeFiles/openGL_cherno.dir/src/App.cpp.s

# Object files for target openGL_cherno
openGL_cherno_OBJECTS = \
"CMakeFiles/openGL_cherno.dir/src/App.cpp.o"

# External object files for target openGL_cherno
openGL_cherno_EXTERNAL_OBJECTS =

openGL_cherno: CMakeFiles/openGL_cherno.dir/src/App.cpp.o
openGL_cherno: CMakeFiles/openGL_cherno.dir/build.make
openGL_cherno: ../libs/GLEW/lib/libGLEW.2.2.0.dylib
openGL_cherno: ../libs/GLEW/lib/libGLEW.2.2.dylib
openGL_cherno: ../libs/GLEW/lib/libGLEW.dylib
openGL_cherno: ../libs/GLFW/lib-macos/libglfw.3.dylib
openGL_cherno: CMakeFiles/openGL_cherno.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/markussalm/dev/openGL_cherno/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable openGL_cherno"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openGL_cherno.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/openGL_cherno.dir/build: openGL_cherno

.PHONY : CMakeFiles/openGL_cherno.dir/build

CMakeFiles/openGL_cherno.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/openGL_cherno.dir/cmake_clean.cmake
.PHONY : CMakeFiles/openGL_cherno.dir/clean

CMakeFiles/openGL_cherno.dir/depend:
	cd /Users/markussalm/dev/openGL_cherno/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/markussalm/dev/openGL_cherno /Users/markussalm/dev/openGL_cherno /Users/markussalm/dev/openGL_cherno/build /Users/markussalm/dev/openGL_cherno/build /Users/markussalm/dev/openGL_cherno/build/CMakeFiles/openGL_cherno.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/openGL_cherno.dir/depend
