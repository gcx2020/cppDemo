cmake_minimum_required(VERSION 3.1.0)
project(demo02 VERSION 0.1.0)
# 启用测试
include(CTest)
enable_testing()

include_directories(./)
add_subdirectory(googletest)

aux_source_directory(./ ALL_FILES)
add_executable(${PROJECT_NAME} ${ALL_FILES})
# 生成可执行文件string_operation需要链接encrypt_and_decrypt库
target_link_libraries(${PROJECT_NAME} gtest gmock pthread)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
add_test(NAME ${PROJECT_NAME}_1 COMMAND ${PROJECT_NAME})