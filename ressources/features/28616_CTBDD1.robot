*** Settings ***
Documentation    CTBDD1
Metadata         ID                           28616
Metadata         Automation priority          1
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
CTBDD1
    [Documentation]    CTBDD1

    Given zert
    When 'ertyu


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_28616_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_28616_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =          Get Variable Value    ${TEST_SETUP}
    ${TEST_28616_SETUP_VALUE} =    Get Variable Value    ${TEST_28616_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_28616_SETUP_VALUE is not None
        Run Keyword    ${TEST_28616_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_28616_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_28616_TEARDOWN}.

    ${TEST_28616_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_28616_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =          Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_28616_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_28616_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
