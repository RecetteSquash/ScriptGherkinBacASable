*** Settings ***
Documentation    CT BDD rejeté
Metadata         ID                           386911
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
CT BDD rejeté
    [Documentation]    CT BDD rejeté

    Given moi
    Then toi


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_386911_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_386911_SETUP} will be run after ${TEST_SETUP}.

    If    $TEST_SETUP is not None    Run Keyword    ${TEST_SETUP}
    If    $TEST_386911_SETUP is not None    Run Keyword    ${TEST_386911_SETUP}

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_386911_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_386911_TEARDOWN}.

    If    $TEST_386911_TEARDOWN is not None    Run Keyword    ${TEST_386911_TEARDOWN}
    If    $TEST_TEARDOWN is not None    Run Keyword    ${TEST_TEARDOWN}
