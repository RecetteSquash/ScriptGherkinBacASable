*** Settings ***
Documentation    MON CT ROBOT
Metadata    ID                           152
Metadata    Automation priority          123
Metadata    Test case importance         Low
Resource    squash_resources.resource


*** Test Cases ***
MON CT ROBOT
    Documentation    MON CT ROBOT

    [Setup]    Test Setup

    Given MON ACTION

    [Teardown]    Test Teardown


*** Keywords ***
Test Setup
    Documentation    test setup
    ...              You can define the keyword $TEST_SETUP for setting up all your tests.
    ...              You can define the keyword $TEST_152_SETUP for setting up this specific test (MON CT ROBOT).
    ...              If both are defined, $TEST_152_SETUP will be run after $TEST_SETUP.

    If    $TEST_SETUP is not None    Run Keyword    ${TEST_SETUP}
    If    $TEST_152_SETUP is not None    Run Keyword    ${TEST_152_SETUP}

Test Teardown
    Documentation    test teardown
    ...              You can define the keyword $TEST_TEARDOWN for tearing down all your tests.
    ...              You can define the keyword $TEST_152_TEARDOWN for tearing down this specific test (MON CT ROBOT).
    ...              If both are defined, $TEST_152_TEARDOWN will be run before $TEST_TEARDOWN.

    If    $TEST_152_TEARDOWN is not None    Run Keyword    ${TEST_152_TEARDOWN}
    If    $TEST_TEARDOWN is not None    Run Keyword    ${TEST_TEARDOWN}
