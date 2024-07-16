set(unitybuild_a_cu "${RunCMake_TEST_BINARY_DIR}/CMakeFiles/tgt.dir/Unity/unity_a_cu.cu")
if(NOT EXISTS "${unitybuild_a_cu}")
  set(RunCMake_TEST_FAILED "Generated unity source files ${unitybuild_a_cu} does not exist.")
  return()
else()
  #verify that odr2 is not part of this source set
  file(STRINGS ${unitybuild_a_cu} unitybuild_a_cu_strings)
  string(REGEX MATCH ".*#include.*odr2.cu" matched_code ${unitybuild_a_cu_strings})
  if(matched_code)
    set(RunCMake_TEST_FAILED "Generated unity file includes un-expected ord2.cu source file")
    return()
  endif()
endif()

set(unitybuild_b_cu "${RunCMake_TEST_BINARY_DIR}/CMakeFiles/tgt.dir/Unity/unity_b_cu.cu")
if(NOT EXISTS "${unitybuild_b_cu}")
  set(RunCMake_TEST_FAILED "Generated unity source files ${unitybuild_b_cu} does not exist.")
  return()
else()
  #verify that odr1 is not part of this source set
  file(STRINGS ${unitybuild_b_cu} unitybuild_b_cu_strings)
  string(REGEX MATCH ".*#include.*odr1.cu" matched_code ${unitybuild_b_cu_strings})
  if(matched_code)
    set(RunCMake_TEST_FAILED "Generated unity file includes un-expected ord1.cu source file")
    return()
  endif()
endif()
