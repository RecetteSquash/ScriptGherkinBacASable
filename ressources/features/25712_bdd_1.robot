*** Settings ***
Documentation    bdd 1
Metadata         ID                           25712
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
bdd 1
    [Documentation]    bdd 1

    Given je rédige un CT


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_25712_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_25712_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =          Get Variable Value    ${TEST_SETUP}
    ${TEST_25712_SETUP_VALUE} =    Get Variable Value    ${TEST_25712_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_25712_SETUP_VALUE is not None
        Run Keyword    ${TEST_25712_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_25712_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_25712_TEARDOWN}.

    ${TEST_25712_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_25712_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =          Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_25712_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_25712_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
