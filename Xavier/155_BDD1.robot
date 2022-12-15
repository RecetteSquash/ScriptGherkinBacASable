*** Settings ***
Documentation    BDD1
Metadata    ID                           155
Metadata    Automation priority          null
Metadata    Test case importance         Low
Resource    squash_resources.resource


*** Test Cases ***
BDD1
    Documentation    BDD1

    [Setup]    Test Setup
    [Teardown]    Test Teardown


*** Keywords ***
Test Setup
    Documentation    test setup
    ...              You can define the keyword $TEST_SETUP for setting up all your tests.
    ...              You can define the keyword $TEST_155_SETUP for setting up this specific test (BDD1).
    ...              If both are defined, $TEST_155_SETUP will be run after $TEST_SETUP.

    If    $TEST_SETUP is not None    Run Keyword    ${TEST_SETUP}
    If    $TEST_155_SETUP is not None    Run Keyword    ${TEST_155_SETUP}

Test Teardown
    Documentation    test teardown
    ...              You can define the keyword $TEST_TEARDOWN for tearing down all your tests.
    ...              You can define the keyword $TEST_155_TEARDOWN for tearing down this specific test (BDD1).
    ...              If both are defined, $TEST_155_TEARDOWN will be run before $TEST_TEARDOWN.

    If    $TEST_155_TEARDOWN is not None    Run Keyword    ${TEST_155_TEARDOWN}
    If    $TEST_TEARDOWN is not None    Run Keyword    ${TEST_TEARDOWN}
