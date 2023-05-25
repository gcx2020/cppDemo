cmake_minimum_required(VERSION 3.0.0)
project(glog_shareLib VERSION 0.1.0)

include(CTest)
enable_testing()
include_directories(${CMAKE_CURRENT_SOURCE_DIR})

link_directories(${CMAKE_CURRENT_SOURCE_DIR}/lib)

add_executable(glog_shareLib main.cpp)

#动态库要加上-l才行
target_link_libraries(glog_shareLib -lglogd) 
