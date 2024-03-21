
cmake_minimum_required(VERSION 3.10)
project(embedded_task)

set(KERNEL_DIR "/lib/modules/${CMAKE_SYSTEM_VERSION}/build")

# Set the source files for your module
set(SRC_FILES kernel_module.c)

# Set the kernel module name
set(KMOD_NAME kernel_module)

# Add your module as an object library
add_library(${KMOD_NAME} MODULE ${SRC_FILES})

# Include the kernel headers
target_include_directories(${KMOD_NAME} PRIVATE ${KERNEL_DIR}/include)

# Specify the module name and the destination directory
set_target_properties(${KMOD_NAME} PROPERTIES PREFIX "" SUFFIX ".ko" LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/out")

# Add a rule to copy the compiled module to the desired location
add_custom_command(TARGET ${KMOD_NAME} POST_BUILD COMMAND ${CMAKE_COMMAND} -E copy $<TARGET_FILE:${KMOD_NAME}> "${CMAKE_BINARY_DIR}/out/")
