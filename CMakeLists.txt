cmake_minimum_required(VERSION 3.31)
project(proj)

set(CMAKE_CXX_STANDARD          17)
set(CMAKE_CXX_STANDARD_REQUIRED YES)
set(CMAKE_CXX_EXTENSIONS        OFF)

add_executable(${PROJECT_NAME} src/proj.cc)

# find_package(raylib)
# target_link_libraries(${PROJECT_NAME} raylib)