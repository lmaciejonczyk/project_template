
find_package(GTest REQUIRED)
find_package(Threads REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

add_executable(test_template_project test_template_project.cpp)
target_link_libraries(test_template_project ${GTEST_BOTH_LIBRARIES} ${CMAKE_THREAD_LIBS_INIT} template_project)

# changed library output path
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})

