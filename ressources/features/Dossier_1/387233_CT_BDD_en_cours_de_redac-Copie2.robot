*** Settings ***
Documentation    CT BDD en cours de redac-Copie2
Metadata         ID                           387233
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
CT BDD en cours de redac-Copie2
    [Documentation]    CT BDD en cours de redac-Copie2

    Given moi
    Then toi


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_387233_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_387233_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =           Get Variable Value    ${TEST_SETUP}
    ${TEST_387233_SETUP_VALUE} =    Get Variable Value    ${TEST_387233_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_387233_SETUP_VALUE is not None
        Run Keyword    ${TEST_387233_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_387233_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_387233_TEARDOWN}.

    ${TEST_387233_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_387233_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =           Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_387233_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_387233_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
