# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/Linux/embedded_task

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/Linux/embedded_task/build

# Include any dependencies generated for this target.
include CMakeFiles/kernel_module.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/kernel_module.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kernel_module.dir/flags.make

CMakeFiles/kernel_module.dir/kernel_module.c.o: CMakeFiles/kernel_module.dir/flags.make
CMakeFiles/kernel_module.dir/kernel_module.c.o: ../kernel_module.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/Linux/embedded_task/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/kernel_module.dir/kernel_module.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kernel_module.dir/kernel_module.c.o -c /home/Linux/embedded_task/kernel_module.c

CMakeFiles/kernel_module.dir/kernel_module.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kernel_module.dir/kernel_module.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/Linux/embedded_task/kernel_module.c > CMakeFiles/kernel_module.dir/kernel_module.c.i

CMakeFiles/kernel_module.dir/kernel_module.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kernel_module.dir/kernel_module.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/Linux/embedded_task/kernel_module.c -o CMakeFiles/kernel_module.dir/kernel_module.c.s

# Object files for target kernel_module
kernel_module_OBJECTS = \
"CMakeFiles/kernel_module.dir/kernel_module.c.o"

# External object files for target kernel_module
kernel_module_EXTERNAL_OBJECTS =

out/kernel_module.ko: CMakeFiles/kernel_module.dir/kernel_module.c.o
out/kernel_module.ko: CMakeFiles/kernel_module.dir/build.make
out/kernel_module.ko: CMakeFiles/kernel_module.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/Linux/embedded_task/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared module out/kernel_module.ko"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kernel_module.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -E copy /home/Linux/embedded_task/build/out/kernel_module.ko /home/Linux/embedded_task/build/out/

# Rule to build all files generated by this target.
CMakeFiles/kernel_module.dir/build: out/kernel_module.ko

.PHONY : CMakeFiles/kernel_module.dir/build

CMakeFiles/kernel_module.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/kernel_module.dir/cmake_clean.cmake
.PHONY : CMakeFiles/kernel_module.dir/clean

CMakeFiles/kernel_module.dir/depend:
	cd /home/Linux/embedded_task/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/Linux/embedded_task /home/Linux/embedded_task /home/Linux/embedded_task/build /home/Linux/embedded_task/build /home/Linux/embedded_task/build/CMakeFiles/kernel_module.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kernel_module.dir/depend

