*** Settings ***
Metadata    Test case importance         Low
Resource    squash_resources.resource


*** Test Cases ***
BDD FR2
    [Setup]    Test Setup

    Given Je rédige un cas de test

    [Teardown]    Test Teardown


*** Keywords ***
Test Setup
    ${__TEST_SETUP} =    Get Variable Value    ${TEST SETUP}
    ${__TEST_386551_SETUP} =    Get Variable Value    ${TEST 386551 SETUP}
    If    $__TEST_SETUP is not None    Run Keyword    ${__TEST_SETUP}
    If    $__TEST_386551_SETUP is not None    Run Keyword    ${__TEST_386551_SETUP}

Test Teardown
    ${__TEST_386551_TEARDOWN} =    Get Variable Value    ${TEST 386551 TEARDOWN}
    ${__TEST_TEARDOWN} =    Get Variable Value    ${TEST TEARDOWN}
    If    $__TEST_386551_TEARDOWN is not None    Run Keyword    ${__TEST_386551_TEARDOWN}
    If    $__TEST_TEARDOWN is not None    Run Keyword    ${__TEST_TEARDOWN}
