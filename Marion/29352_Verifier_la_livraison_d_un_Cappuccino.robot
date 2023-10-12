*** Settings ***
Documentation    Vérifier la livraison d'un Cappuccino
Metadata         ID                           29352
Metadata         Reference                    02
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Vérifier la livraison d'un Cappuccino
    [Documentation]    Vérifier la livraison d'un Cappuccino

    Given la machine est en marche
    And mon solde est au moins de "0.80"
    When je sélectionne le "Cappuccino"
    When la machine me sert un "Capuccino"


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_29352_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_29352_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =          Get Variable Value    ${TEST_SETUP}
    ${TEST_29352_SETUP_VALUE} =    Get Variable Value    ${TEST_29352_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_29352_SETUP_VALUE is not None
        Run Keyword    ${TEST_29352_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_29352_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_29352_TEARDOWN}.

    ${TEST_29352_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_29352_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =          Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_29352_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_29352_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
