cmake_minimum_required(VERSION 3.10)
project(minigradcpp)

enable_testing()

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Rpass-missed=loop-vectorize")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Rpass-analysis=loop-vectorize")
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Rpass=loop-vectorize")



set( SOURCE_PATH "${PROJECT_SOURCE_DIR}/src" )
set( INCLUDE_PATH "${PROJECT_SOURCE_DIR}/include" )

set(TEST_PATH "${PROJECT_SOURCE_DIR}/test")

file(GLOB_RECURSE TPPS "${TEST_PATH}/*.cpp")

file( GLOB_RECURSE HPPS "${INCLUDE_PATH}/*.hpp" )
file( GLOB_RECURSE CPPS "${SOURCE_PATH}/*.cpp" )

add_executable(tests ${TPPS} ${HPPS})
add_test(NAME MyTest COMMAND tests)

add_executable(main ${CPPS} ${HPPS} )



