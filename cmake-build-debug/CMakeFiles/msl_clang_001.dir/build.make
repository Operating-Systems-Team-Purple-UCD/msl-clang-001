# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2017.3.2\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2017.3.2\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\John Becker\Dropbox\Documents\School Stuff\UC Denver New Degree\Spring 2018\Operating System Concepts\Homeworks\msl-clang-001"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\John Becker\Dropbox\Documents\School Stuff\UC Denver New Degree\Spring 2018\Operating System Concepts\Homeworks\msl-clang-001\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/msl_clang_001.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/msl_clang_001.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/msl_clang_001.dir/flags.make

CMakeFiles/msl_clang_001.dir/main.c.obj: CMakeFiles/msl_clang_001.dir/flags.make
CMakeFiles/msl_clang_001.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\John Becker\Dropbox\Documents\School Stuff\UC Denver New Degree\Spring 2018\Operating System Concepts\Homeworks\msl-clang-001\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/msl_clang_001.dir/main.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\msl_clang_001.dir\main.c.obj   -c "C:\Users\John Becker\Dropbox\Documents\School Stuff\UC Denver New Degree\Spring 2018\Operating System Concepts\Homeworks\msl-clang-001\main.c"

CMakeFiles/msl_clang_001.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/msl_clang_001.dir/main.c.i"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\John Becker\Dropbox\Documents\School Stuff\UC Denver New Degree\Spring 2018\Operating System Concepts\Homeworks\msl-clang-001\main.c" > CMakeFiles\msl_clang_001.dir\main.c.i

CMakeFiles/msl_clang_001.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/msl_clang_001.dir/main.c.s"
	C:\PROGRA~2\MINGW-~1\I686-7~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\John Becker\Dropbox\Documents\School Stuff\UC Denver New Degree\Spring 2018\Operating System Concepts\Homeworks\msl-clang-001\main.c" -o CMakeFiles\msl_clang_001.dir\main.c.s

CMakeFiles/msl_clang_001.dir/main.c.obj.requires:

.PHONY : CMakeFiles/msl_clang_001.dir/main.c.obj.requires

CMakeFiles/msl_clang_001.dir/main.c.obj.provides: CMakeFiles/msl_clang_001.dir/main.c.obj.requires
	$(MAKE) -f CMakeFiles\msl_clang_001.dir\build.make CMakeFiles/msl_clang_001.dir/main.c.obj.provides.build
.PHONY : CMakeFiles/msl_clang_001.dir/main.c.obj.provides

CMakeFiles/msl_clang_001.dir/main.c.obj.provides.build: CMakeFiles/msl_clang_001.dir/main.c.obj


# Object files for target msl_clang_001
msl_clang_001_OBJECTS = \
"CMakeFiles/msl_clang_001.dir/main.c.obj"

# External object files for target msl_clang_001
msl_clang_001_EXTERNAL_OBJECTS =

msl_clang_001.exe: CMakeFiles/msl_clang_001.dir/main.c.obj
msl_clang_001.exe: CMakeFiles/msl_clang_001.dir/build.make
msl_clang_001.exe: CMakeFiles/msl_clang_001.dir/linklibs.rsp
msl_clang_001.exe: CMakeFiles/msl_clang_001.dir/objects1.rsp
msl_clang_001.exe: CMakeFiles/msl_clang_001.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\John Becker\Dropbox\Documents\School Stuff\UC Denver New Degree\Spring 2018\Operating System Concepts\Homeworks\msl-clang-001\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable msl_clang_001.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\msl_clang_001.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/msl_clang_001.dir/build: msl_clang_001.exe

.PHONY : CMakeFiles/msl_clang_001.dir/build

CMakeFiles/msl_clang_001.dir/requires: CMakeFiles/msl_clang_001.dir/main.c.obj.requires

.PHONY : CMakeFiles/msl_clang_001.dir/requires

CMakeFiles/msl_clang_001.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\msl_clang_001.dir\cmake_clean.cmake
.PHONY : CMakeFiles/msl_clang_001.dir/clean

CMakeFiles/msl_clang_001.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\John Becker\Dropbox\Documents\School Stuff\UC Denver New Degree\Spring 2018\Operating System Concepts\Homeworks\msl-clang-001" "C:\Users\John Becker\Dropbox\Documents\School Stuff\UC Denver New Degree\Spring 2018\Operating System Concepts\Homeworks\msl-clang-001" "C:\Users\John Becker\Dropbox\Documents\School Stuff\UC Denver New Degree\Spring 2018\Operating System Concepts\Homeworks\msl-clang-001\cmake-build-debug" "C:\Users\John Becker\Dropbox\Documents\School Stuff\UC Denver New Degree\Spring 2018\Operating System Concepts\Homeworks\msl-clang-001\cmake-build-debug" "C:\Users\John Becker\Dropbox\Documents\School Stuff\UC Denver New Degree\Spring 2018\Operating System Concepts\Homeworks\msl-clang-001\cmake-build-debug\CMakeFiles\msl_clang_001.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/msl_clang_001.dir/depend

