*** Settings ***
Documentation    BDD robot
Metadata    ID                           178
Metadata    Automation priority          null
Metadata    Test case importance         Low
Resource    squash_resources.resource


*** Test Cases ***
BDD robot
    Documentation    BDD robot

    [Setup]    Test Setup

    Given action

    [Teardown]    Test Teardown


*** Keywords ***
Test Setup
    Documentation    test setup
    ...              You can define the keyword $TEST_SETUP for setting up all your tests.
    ...              You can define the keyword $TEST_178_SETUP for setting up this specific test (BDD robot).
    ...              If both are defined, $TEST_178_SETUP will be run after $TEST_SETUP.

    If    $TEST_SETUP is not None    Run Keyword    ${TEST_SETUP}
    If    $TEST_178_SETUP is not None    Run Keyword    ${TEST_178_SETUP}

Test Teardown
    Documentation    test teardown
    ...              You can define the keyword $TEST_TEARDOWN for tearing down all your tests.
    ...              You can define the keyword $TEST_178_TEARDOWN for tearing down this specific test (BDD robot).
    ...              If both are defined, $TEST_178_TEARDOWN will be run before $TEST_TEARDOWN.

    If    $TEST_178_TEARDOWN is not None    Run Keyword    ${TEST_178_TEARDOWN}
    If    $TEST_TEARDOWN is not None    Run Keyword    ${TEST_TEARDOWN}
