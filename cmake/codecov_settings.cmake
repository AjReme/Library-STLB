set(LIBRARY_TESTS               "testing/tests")
set(GCOV_NAME                   "gcov")
set(CXX_COMPILER_FLAGS          "${CXX_COMPILER_FLAGS} -g --coverage")
set(СXX_LINKER_FLAGS            "${CXX_LINKER_FLAGS} -lgcov --coverage")

find_program(CTEST_COVERAGE_COMMAND NAMES "${GCOV_NAME}")
if(NOT CTEST_COVERAGE_COMMAND)
    message(FATAL_ERROR "There is no gcov. Please, install it before testing.")
endif()
