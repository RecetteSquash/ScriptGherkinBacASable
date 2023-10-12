*** Settings ***
Documentation    Vérifier que la machine est disponible
Metadata         ID                           29351
Metadata         Reference                    01
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Vérifier que la machine est disponible
    [Documentation]    Vérifier que la machine est disponible

    Given la machine est en marche
    When je passe mon badge
    Then mon solde s'affiche


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_29351_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_29351_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =          Get Variable Value    ${TEST_SETUP}
    ${TEST_29351_SETUP_VALUE} =    Get Variable Value    ${TEST_29351_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_29351_SETUP_VALUE is not None
        Run Keyword    ${TEST_29351_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_29351_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_29351_TEARDOWN}.

    ${TEST_29351_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_29351_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =          Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_29351_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_29351_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
