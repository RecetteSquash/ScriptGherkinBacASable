*** Settings ***
Documentation    Vérifier les produits disponibles
Metadata         ID                           387247
Metadata         Automation priority          25
Metadata         Test case importance         Medium
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Vérifier les produits disponibles
    [Documentation]    Vérifier les produits disponibles

    Given Given la machine est en marche.
    When je liste les produits disponibles.
    Then je constate que tous les produits suivants sont disponibles : expresso, lungo, cappucino


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_387247_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_387247_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =           Get Variable Value    ${TEST_SETUP}
    ${TEST_387247_SETUP_VALUE} =    Get Variable Value    ${TEST_387247_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_387247_SETUP_VALUE is not None
        Run Keyword    ${TEST_387247_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_387247_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_387247_TEARDOWN}.

    ${TEST_387247_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_387247_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =           Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_387247_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_387247_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
