*** Settings ***
Documentation    BDD-Copie1
Metadata         ID                           391049
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
BDD-Copie1
    [Documentation]    BDD-Copie1

    Given action "1"
    Given action séverine


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_391049_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_391049_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =           Get Variable Value    ${TEST_SETUP}
    ${TEST_391049_SETUP_VALUE} =    Get Variable Value    ${TEST_391049_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_391049_SETUP_VALUE is not None
        Run Keyword    ${TEST_391049_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_391049_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_391049_TEARDOWN}.

    ${TEST_391049_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_391049_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =           Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_391049_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_391049_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
