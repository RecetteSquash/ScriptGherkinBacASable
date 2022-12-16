*** Settings ***
Documentation    BDD1-Copie1
Metadata    ID                           146
Metadata    Automation priority          null
Metadata    Test case importance         Low
Resource    squash_resources.resource


*** Test Cases ***
BDD1-Copie1
    Documentation    BDD1-Copie1

    [Setup]    Test Setup
    [Teardown]    Test Teardown


*** Keywords ***
Test Setup
    Documentation    test setup
    ...              You can define the keyword $TEST_SETUP for setting up all your tests.
    ...              You can define the keyword $TEST_146_SETUP for setting up this specific test (BDD1-Copie1).
    ...              If both are defined, $TEST_146_SETUP will be run after $TEST_SETUP.

    If    $TEST_SETUP is not None    Run Keyword    ${TEST_SETUP}
    If    $TEST_146_SETUP is not None    Run Keyword    ${TEST_146_SETUP}

Test Teardown
    Documentation    test teardown
    ...              You can define the keyword $TEST_TEARDOWN for tearing down all your tests.
    ...              You can define the keyword $TEST_146_TEARDOWN for tearing down this specific test (BDD1-Copie1).
    ...              If both are defined, $TEST_146_TEARDOWN will be run before $TEST_TEARDOWN.

    If    $TEST_146_TEARDOWN is not None    Run Keyword    ${TEST_146_TEARDOWN}
    If    $TEST_TEARDOWN is not None    Run Keyword    ${TEST_TEARDOWN}
