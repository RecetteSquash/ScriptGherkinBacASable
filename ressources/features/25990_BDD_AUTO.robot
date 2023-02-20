*** Settings ***
Documentation    BDD AUTO
Metadata         ID                           25990
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
BDD AUTO
    [Documentation]    BDD AUTO

    Given je rédige un CT


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_25990_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_25990_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =          Get Variable Value    ${TEST_SETUP}
    ${TEST_25990_SETUP_VALUE} =    Get Variable Value    ${TEST_25990_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_25990_SETUP_VALUE is not None
        Run Keyword    ${TEST_25990_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_25990_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_25990_TEARDOWN}.

    ${TEST_25990_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_25990_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =          Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_25990_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_25990_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
