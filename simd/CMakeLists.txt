cmake_minimum_required(VERSION 3.10)
project(minigradcpp)

enable_testing()
set(CMAKE_CXX_STANDARD 17)  # Or your desired standard
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3")
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Rpass-missed=loop-vectorize")
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Rpass-analysis=loop-vectorize")
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mavx")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mavx512f")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fopenmp")




set( SOURCE_PATH "${PROJECT_SOURCE_DIR}/src" )
set( INCLUDE_PATH "${PROJECT_SOURCE_DIR}/include" )

set(TEST_PATH "${PROJECT_SOURCE_DIR}/test")

file(GLOB_RECURSE TPPS "${TEST_PATH}/*.cpp")

file( GLOB_RECURSE HPPS "${INCLUDE_PATH}/*.hpp" )
file( GLOB_RECURSE CPPS "${SOURCE_PATH}/*.cpp" )

add_executable(tests ${TPPS} ${HPPS})

target_include_directories(tests PUBLIC ${PROJECT_SOURCE_DIR}/include)

add_test(NAME MyTest COMMAND tests)

#target_include_directories(test, PRIVATE ../src)

add_executable(main ${CPPS} ${HPPS} )



