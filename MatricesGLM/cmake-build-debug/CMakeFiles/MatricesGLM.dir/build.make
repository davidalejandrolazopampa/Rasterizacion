# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\AplicacionesPortables\CLion-2020.2.3.win\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = D:\AplicacionesPortables\CLion-2020.2.3.win\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\workspace\CG20212-Rasterizacion\Rasterizacion\MatricesGLM

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\workspace\CG20212-Rasterizacion\Rasterizacion\MatricesGLM\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/MatricesGLM.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MatricesGLM.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MatricesGLM.dir/flags.make

CMakeFiles/MatricesGLM.dir/main.cpp.obj: CMakeFiles/MatricesGLM.dir/flags.make
CMakeFiles/MatricesGLM.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\workspace\CG20212-Rasterizacion\Rasterizacion\MatricesGLM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MatricesGLM.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MatricesGLM.dir\main.cpp.obj -c D:\workspace\CG20212-Rasterizacion\Rasterizacion\MatricesGLM\main.cpp

CMakeFiles/MatricesGLM.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MatricesGLM.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\workspace\CG20212-Rasterizacion\Rasterizacion\MatricesGLM\main.cpp > CMakeFiles\MatricesGLM.dir\main.cpp.i

CMakeFiles/MatricesGLM.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MatricesGLM.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\workspace\CG20212-Rasterizacion\Rasterizacion\MatricesGLM\main.cpp -o CMakeFiles\MatricesGLM.dir\main.cpp.s

CMakeFiles/MatricesGLM.dir/glut_ply.cpp.obj: CMakeFiles/MatricesGLM.dir/flags.make
CMakeFiles/MatricesGLM.dir/glut_ply.cpp.obj: ../glut_ply.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\workspace\CG20212-Rasterizacion\Rasterizacion\MatricesGLM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/MatricesGLM.dir/glut_ply.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MatricesGLM.dir\glut_ply.cpp.obj -c D:\workspace\CG20212-Rasterizacion\Rasterizacion\MatricesGLM\glut_ply.cpp

CMakeFiles/MatricesGLM.dir/glut_ply.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MatricesGLM.dir/glut_ply.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\workspace\CG20212-Rasterizacion\Rasterizacion\MatricesGLM\glut_ply.cpp > CMakeFiles\MatricesGLM.dir\glut_ply.cpp.i

CMakeFiles/MatricesGLM.dir/glut_ply.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MatricesGLM.dir/glut_ply.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\workspace\CG20212-Rasterizacion\Rasterizacion\MatricesGLM\glut_ply.cpp -o CMakeFiles\MatricesGLM.dir\glut_ply.cpp.s

# Object files for target MatricesGLM
MatricesGLM_OBJECTS = \
"CMakeFiles/MatricesGLM.dir/main.cpp.obj" \
"CMakeFiles/MatricesGLM.dir/glut_ply.cpp.obj"

# External object files for target MatricesGLM
MatricesGLM_EXTERNAL_OBJECTS =

MatricesGLM.exe: CMakeFiles/MatricesGLM.dir/main.cpp.obj
MatricesGLM.exe: CMakeFiles/MatricesGLM.dir/glut_ply.cpp.obj
MatricesGLM.exe: CMakeFiles/MatricesGLM.dir/build.make
MatricesGLM.exe: CMakeFiles/MatricesGLM.dir/linklibs.rsp
MatricesGLM.exe: CMakeFiles/MatricesGLM.dir/objects1.rsp
MatricesGLM.exe: CMakeFiles/MatricesGLM.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\workspace\CG20212-Rasterizacion\Rasterizacion\MatricesGLM\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable MatricesGLM.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\MatricesGLM.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MatricesGLM.dir/build: MatricesGLM.exe

.PHONY : CMakeFiles/MatricesGLM.dir/build

CMakeFiles/MatricesGLM.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\MatricesGLM.dir\cmake_clean.cmake
.PHONY : CMakeFiles/MatricesGLM.dir/clean

CMakeFiles/MatricesGLM.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\workspace\CG20212-Rasterizacion\Rasterizacion\MatricesGLM D:\workspace\CG20212-Rasterizacion\Rasterizacion\MatricesGLM D:\workspace\CG20212-Rasterizacion\Rasterizacion\MatricesGLM\cmake-build-debug D:\workspace\CG20212-Rasterizacion\Rasterizacion\MatricesGLM\cmake-build-debug D:\workspace\CG20212-Rasterizacion\Rasterizacion\MatricesGLM\cmake-build-debug\CMakeFiles\MatricesGLM.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MatricesGLM.dir/depend
