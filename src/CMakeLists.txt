
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

add_library(template_project STATIC template_project.cpp)

# generate compile flag to json file
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

