*** Settings ***
Metadata    Test case importance         Low
Resource    squash_resources.resource


*** Test Cases ***
BDD RF3 A
    [Setup]    Test Setup

    Given Je rédige un cas de test

    [Teardown]    Test Teardown


*** Keywords ***
Test Setup
    ${__TEST_SETUP} =    Get Variable Value    ${TEST SETUP}
    ${__TEST_386550_SETUP} =    Get Variable Value    ${TEST 386550 SETUP}
    If    $__TEST_SETUP is not None    Run Keyword    ${__TEST_SETUP}
    If    $__TEST_386550_SETUP is not None    Run Keyword    ${__TEST_386550_SETUP}

Test Teardown
    ${__TEST_386550_TEARDOWN} =    Get Variable Value    ${TEST 386550 TEARDOWN}
    ${__TEST_TEARDOWN} =    Get Variable Value    ${TEST TEARDOWN}
    If    $__TEST_386550_TEARDOWN is not None    Run Keyword    ${__TEST_386550_TEARDOWN}
    If    $__TEST_TEARDOWN is not None    Run Keyword    ${__TEST_TEARDOWN}
