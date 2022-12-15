*** Settings ***
Documentation    Vérifier la livraison des produits
...
...              Ce cas de test vérifie la livraison des produits depuis la machine 
...              fonctionne : le nom du produit ainsi que son prix sont corrects.
Metadata    ID                           134
Metadata    Reference                    VERIF_002
Metadata    Automation priority          5
Metadata    Test case importance         High
Resource    squash_resources.resource


*** Test Cases ***
Vérifier la livraison des produits
    Documentation    Vérifier la livraison des produits

    [Setup]    Test Setup

    Given la machine est en marche
    And mon "solde" est au moins de "${prix}".
    When je sélectionne le "${produit}".
    Then la machine me sert un "${produit}" et mon compte est débité de "${prix}"

    [Teardown]    Test Teardown


*** Keywords ***
Test Setup
    Documentation    test setup
    ...              You can define the keyword $TEST_SETUP for setting up all your tests.
    ...              You can define the keyword $TEST_134_SETUP for setting up this specific test (Vérifier la livraison des produits).
    ...              If both are defined, $TEST_134_SETUP will be run after $TEST_SETUP.

    If    $TEST_SETUP is not None    Run Keyword    ${TEST_SETUP}
    If    $TEST_134_SETUP is not None    Run Keyword    ${TEST_134_SETUP}

Test Teardown
    Documentation    test teardown
    ...              You can define the keyword $TEST_TEARDOWN for tearing down all your tests.
    ...              You can define the keyword $TEST_134_TEARDOWN for tearing down this specific test (Vérifier la livraison des produits).
    ...              If both are defined, $TEST_134_TEARDOWN will be run before $TEST_TEARDOWN.

    If    $TEST_134_TEARDOWN is not None    Run Keyword    ${TEST_134_TEARDOWN}
    If    $TEST_TEARDOWN is not None    Run Keyword    ${TEST_TEARDOWN}
