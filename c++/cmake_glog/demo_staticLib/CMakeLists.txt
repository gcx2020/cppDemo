cmake_minimum_required(VERSION 3.0.0)
project(glog_static VERSION 0.1.0)

include(CTest)
enable_testing()

include_directories(${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/glog ${CMAKE_CURRENT_SOURCE_DIR}/gflags)
link_directories(${CMAKE_CURRENT_SOURCE_DIR}/glog/lib)

add_executable(glog_static main.cpp)
target_link_libraries(glog_static 
                      libglogd.a
                      libglogtestd.a 
                      libgflags_debug.a
                      libgflags_nothreads_debug.a
                      pthread)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
