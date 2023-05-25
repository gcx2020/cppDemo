cmake_minimum_required(VERSION 3.0.0)
project(glog_demo VERSION 0.1.0)

include(CTest)
enable_testing()
add_subdirectory(glog)

add_executable(glog_demo main.cpp)
target_link_libraries(glog_demo glog)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
