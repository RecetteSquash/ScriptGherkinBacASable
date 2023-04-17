*** Settings ***
Documentation    CT4-Copie2-Copie1
Metadata         ID                           386632
Metadata         Automation priority          null
Metadata         Test case importance         Medium
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
CT4-Copie2-Copie1
    [Documentation]    CT4-Copie2-Copie1

    Given un utilisateur lançant ce cas de test
    When j'execute ce cas de test de prio moyenne
    Then ce cas de test est exécuté


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_386632_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_386632_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =           Get Variable Value    ${TEST_SETUP}
    ${TEST_386632_SETUP_VALUE} =    Get Variable Value    ${TEST_386632_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_386632_SETUP_VALUE is not None
        Run Keyword    ${TEST_386632_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_386632_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_386632_TEARDOWN}.

    ${TEST_386632_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_386632_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =           Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_386632_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_386632_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
