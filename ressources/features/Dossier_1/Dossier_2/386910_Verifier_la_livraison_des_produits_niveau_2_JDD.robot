*** Settings ***
Documentation    Vérifier la livraison des produits niveau 2 JDD
Metadata         ID                           386910
Metadata         Automation priority          10
Metadata         Test case importance         Very high
Resource         squash_resources.resource
Library          squash_tf.TFParamService
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Vérifier la livraison des produits niveau 2 JDD
    [Documentation]    Vérifier la livraison des produits niveau 2 JDD

    &{dataset} =    Retrieve Dataset

    Given la machine est en marche.
    And mon solde est au moins de "${dataset}[prix]".
    When je sélectionne le "${dataset}[produit]".
    Then la machine me sert un "${dataset}[produit]" et mon compte est débité de "${dataset}[prix]".


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_386910_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_386910_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =           Get Variable Value    ${TEST_SETUP}
    ${TEST_386910_SETUP_VALUE} =    Get Variable Value    ${TEST_386910_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_386910_SETUP_VALUE is not None
        Run Keyword    ${TEST_386910_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_386910_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_386910_TEARDOWN}.

    ${TEST_386910_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_386910_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =           Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_386910_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_386910_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END

Retrieve Dataset
    [Documentation]    Retrieves Squash TM's datasets and stores them in a dictionary.
    ...
    ...                For instance, datasets containing 3 parameters "city", "country" and "currency"
    ...                have been defined in Squash TM.
    ...
    ...                First, this keyword retrieves parameter values from Squash TM
    ...                and stores them into variables, using the keyword 'Get Test Param':
    ...                ${city} =    Get Test Param    DS_city
    ...
    ...                Then, this keyword stores the parameters into the &{dataset} dictionary
    ...                with each parameter name as key, and each parameter value as value:
    ...                &{dataset} =    Create Dictionary    city=${city}    country=${country}    currency=${currency}

    ${prix} =       Get Test Param    DS_prix
    ${produit} =    Get Test Param    DS_produit

    &{dataset} =    Create Dictionary    prix=${prix}    produit=${produit}

    RETURN    &{dataset}
