*** Settings ***
Metadata    Test case importance         Low
Resource    squash_resources.resource


*** Test Cases ***
BDD framework
    [Setup]    Test Setup
    [Teardown]    Test Teardown


*** Keywords ***
Test Setup
    ${__TEST_SETUP} =    Get Variable Value    ${TEST SETUP}
    ${__TEST_24468_SETUP} =    Get Variable Value    ${TEST 24468 SETUP}
    If    $__TEST_SETUP is not None    Run Keyword    ${__TEST_SETUP}
    If    $__TEST_24468_SETUP is not None    Run Keyword    ${__TEST_24468_SETUP}

Test Teardown
    ${__TEST_24468_TEARDOWN} =    Get Variable Value    ${TEST 24468 TEARDOWN}
    ${__TEST_TEARDOWN} =    Get Variable Value    ${TEST TEARDOWN}
    If    $__TEST_24468_TEARDOWN is not None    Run Keyword    ${__TEST_24468_TEARDOWN}
    If    $__TEST_TEARDOWN is not None    Run Keyword    ${__TEST_TEARDOWN}
