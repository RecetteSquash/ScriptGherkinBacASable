*** Settings ***
Documentation    CT BDD suspendu
Metadata         ID                           386912
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
CT BDD suspendu
    [Documentation]    CT BDD suspendu

    Given moi
    Then toi


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_386912_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_386912_SETUP} will be run after ${TEST_SETUP}.

    If    $TEST_SETUP is not None    Run Keyword    ${TEST_SETUP}
    If    $TEST_386912_SETUP is not None    Run Keyword    ${TEST_386912_SETUP}

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_386912_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_386912_TEARDOWN}.

    If    $TEST_386912_TEARDOWN is not None    Run Keyword    ${TEST_386912_TEARDOWN}
    If    $TEST_TEARDOWN is not None    Run Keyword    ${TEST_TEARDOWN}
