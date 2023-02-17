*** Settings ***
Documentation    CT BDD en cours de redac-Copie1
Metadata         ID                           387232
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
CT BDD en cours de redac-Copie1
    [Documentation]    CT BDD en cours de redac-Copie1

    Given moi
    Then toi


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_387232_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_387232_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =           Get Variable Value    ${TEST_SETUP}
    ${TEST_387232_SETUP_VALUE} =    Get Variable Value    ${TEST_387232_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_387232_SETUP_VALUE is not None
        Run Keyword    ${TEST_387232_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_387232_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_387232_TEARDOWN}.

    ${TEST_387232_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_387232_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =           Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_387232_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_387232_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
