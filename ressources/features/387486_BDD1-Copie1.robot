*** Settings ***
Documentation    BDD1-Copie1
Metadata         ID                           387486
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
BDD1-Copie1
    [Documentation]    BDD1-Copie1

    Given un utilisateur


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_387486_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_387486_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =           Get Variable Value    ${TEST_SETUP}
    ${TEST_387486_SETUP_VALUE} =    Get Variable Value    ${TEST_387486_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_387486_SETUP_VALUE is not None
        Run Keyword    ${TEST_387486_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_387486_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_387486_TEARDOWN}.

    ${TEST_387486_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_387486_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =           Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_387486_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_387486_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
