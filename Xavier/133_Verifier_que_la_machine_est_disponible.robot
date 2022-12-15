*** Settings ***
Documentation    Vérifier que la machine est disponible
...
...              Ce cas de test vérifie la disponibilité de la machine
Metadata    ID                           133
Metadata    Reference                    VERIF_001
Metadata    Automation priority          10
Metadata    Test case importance         Very high
Resource    squash_resources.resource


*** Test Cases ***
Vérifier que la machine est disponible
    Documentation    Vérifier que la machine est disponible

    [Setup]    Test Setup

    Given la machine est branchée
    When je passe mon badge
    Then je constate que mon solde s'affiche.

    [Teardown]    Test Teardown


*** Keywords ***
Test Setup
    Documentation    test setup
    ...              You can define the keyword $TEST_SETUP for setting up all your tests.
    ...              You can define the keyword $TEST_133_SETUP for setting up this specific test (Vérifier que la machine est disponible).
    ...              If both are defined, $TEST_133_SETUP will be run after $TEST_SETUP.

    If    $TEST_SETUP is not None    Run Keyword    ${TEST_SETUP}
    If    $TEST_133_SETUP is not None    Run Keyword    ${TEST_133_SETUP}

Test Teardown
    Documentation    test teardown
    ...              You can define the keyword $TEST_TEARDOWN for tearing down all your tests.
    ...              You can define the keyword $TEST_133_TEARDOWN for tearing down this specific test (Vérifier que la machine est disponible).
    ...              If both are defined, $TEST_133_TEARDOWN will be run before $TEST_TEARDOWN.

    If    $TEST_133_TEARDOWN is not None    Run Keyword    ${TEST_133_TEARDOWN}
    If    $TEST_TEARDOWN is not None    Run Keyword    ${TEST_TEARDOWN}
