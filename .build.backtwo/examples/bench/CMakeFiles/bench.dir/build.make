# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /nix/store/4k2h9qsps52n1v56zq03yi67dwmxa81i-cmake-3.30.5/bin/cmake

# The command to remove a file.
RM = /nix/store/4k2h9qsps52n1v56zq03yi67dwmxa81i-cmake-3.30.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/leigh/Code/whisper.cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/leigh/Code/whisper.cpp/build

# Include any dependencies generated for this target.
include examples/bench/CMakeFiles/bench.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/bench/CMakeFiles/bench.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/bench/CMakeFiles/bench.dir/progress.make

# Include the compile flags for this target's objects.
include examples/bench/CMakeFiles/bench.dir/flags.make

examples/bench/CMakeFiles/bench.dir/bench.cpp.o: examples/bench/CMakeFiles/bench.dir/flags.make
examples/bench/CMakeFiles/bench.dir/bench.cpp.o: /home/leigh/Code/whisper.cpp/examples/bench/bench.cpp
examples/bench/CMakeFiles/bench.dir/bench.cpp.o: examples/bench/CMakeFiles/bench.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/leigh/Code/whisper.cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/bench/CMakeFiles/bench.dir/bench.cpp.o"
	cd /home/leigh/Code/whisper.cpp/build/examples/bench && /nix/store/03bq5hc45d5wkw8pajmz4vgd5s0ivyq8-clang-wrapper-18.1.8/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/bench/CMakeFiles/bench.dir/bench.cpp.o -MF CMakeFiles/bench.dir/bench.cpp.o.d -o CMakeFiles/bench.dir/bench.cpp.o -c /home/leigh/Code/whisper.cpp/examples/bench/bench.cpp

examples/bench/CMakeFiles/bench.dir/bench.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/bench.dir/bench.cpp.i"
	cd /home/leigh/Code/whisper.cpp/build/examples/bench && /nix/store/03bq5hc45d5wkw8pajmz4vgd5s0ivyq8-clang-wrapper-18.1.8/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leigh/Code/whisper.cpp/examples/bench/bench.cpp > CMakeFiles/bench.dir/bench.cpp.i

examples/bench/CMakeFiles/bench.dir/bench.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/bench.dir/bench.cpp.s"
	cd /home/leigh/Code/whisper.cpp/build/examples/bench && /nix/store/03bq5hc45d5wkw8pajmz4vgd5s0ivyq8-clang-wrapper-18.1.8/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leigh/Code/whisper.cpp/examples/bench/bench.cpp -o CMakeFiles/bench.dir/bench.cpp.s

# Object files for target bench
bench_OBJECTS = \
"CMakeFiles/bench.dir/bench.cpp.o"

# External object files for target bench
bench_EXTERNAL_OBJECTS =

bin/bench: examples/bench/CMakeFiles/bench.dir/bench.cpp.o
bin/bench: examples/bench/CMakeFiles/bench.dir/build.make
bin/bench: src/libwhisper.so.1.7.2
bin/bench: ggml/src/libggml.so
bin/bench: ggml/src/ggml-cpu/libggml-cpu.so
bin/bench: ggml/src/libggml-base.so
bin/bench: examples/bench/CMakeFiles/bench.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/leigh/Code/whisper.cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/bench"
	cd /home/leigh/Code/whisper.cpp/build/examples/bench && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bench.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/bench/CMakeFiles/bench.dir/build: bin/bench
.PHONY : examples/bench/CMakeFiles/bench.dir/build

examples/bench/CMakeFiles/bench.dir/clean:
	cd /home/leigh/Code/whisper.cpp/build/examples/bench && $(CMAKE_COMMAND) -P CMakeFiles/bench.dir/cmake_clean.cmake
.PHONY : examples/bench/CMakeFiles/bench.dir/clean

examples/bench/CMakeFiles/bench.dir/depend:
	cd /home/leigh/Code/whisper.cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/leigh/Code/whisper.cpp /home/leigh/Code/whisper.cpp/examples/bench /home/leigh/Code/whisper.cpp/build /home/leigh/Code/whisper.cpp/build/examples/bench /home/leigh/Code/whisper.cpp/build/examples/bench/CMakeFiles/bench.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : examples/bench/CMakeFiles/bench.dir/depend

