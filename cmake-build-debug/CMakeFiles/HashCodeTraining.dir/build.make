# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/sbernadzikovskiy/CLionProjects/HashCodeTraining

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/sbernadzikovskiy/CLionProjects/HashCodeTraining/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/HashCodeTraining.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/HashCodeTraining.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HashCodeTraining.dir/flags.make

CMakeFiles/HashCodeTraining.dir/main.cpp.o: CMakeFiles/HashCodeTraining.dir/flags.make
CMakeFiles/HashCodeTraining.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sbernadzikovskiy/CLionProjects/HashCodeTraining/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/HashCodeTraining.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HashCodeTraining.dir/main.cpp.o -c /Users/sbernadzikovskiy/CLionProjects/HashCodeTraining/main.cpp

CMakeFiles/HashCodeTraining.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HashCodeTraining.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sbernadzikovskiy/CLionProjects/HashCodeTraining/main.cpp > CMakeFiles/HashCodeTraining.dir/main.cpp.i

CMakeFiles/HashCodeTraining.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HashCodeTraining.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sbernadzikovskiy/CLionProjects/HashCodeTraining/main.cpp -o CMakeFiles/HashCodeTraining.dir/main.cpp.s

# Object files for target HashCodeTraining
HashCodeTraining_OBJECTS = \
"CMakeFiles/HashCodeTraining.dir/main.cpp.o"

# External object files for target HashCodeTraining
HashCodeTraining_EXTERNAL_OBJECTS =

HashCodeTraining: CMakeFiles/HashCodeTraining.dir/main.cpp.o
HashCodeTraining: CMakeFiles/HashCodeTraining.dir/build.make
HashCodeTraining: CMakeFiles/HashCodeTraining.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/sbernadzikovskiy/CLionProjects/HashCodeTraining/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable HashCodeTraining"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HashCodeTraining.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HashCodeTraining.dir/build: HashCodeTraining

.PHONY : CMakeFiles/HashCodeTraining.dir/build

CMakeFiles/HashCodeTraining.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HashCodeTraining.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HashCodeTraining.dir/clean

CMakeFiles/HashCodeTraining.dir/depend:
	cd /Users/sbernadzikovskiy/CLionProjects/HashCodeTraining/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sbernadzikovskiy/CLionProjects/HashCodeTraining /Users/sbernadzikovskiy/CLionProjects/HashCodeTraining /Users/sbernadzikovskiy/CLionProjects/HashCodeTraining/cmake-build-debug /Users/sbernadzikovskiy/CLionProjects/HashCodeTraining/cmake-build-debug /Users/sbernadzikovskiy/CLionProjects/HashCodeTraining/cmake-build-debug/CMakeFiles/HashCodeTraining.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/HashCodeTraining.dir/depend
