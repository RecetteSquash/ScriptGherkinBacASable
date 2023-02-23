*** Settings ***
Documentation    Vérifier que la machine est disponible
Metadata         ID                           26127
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Library          squash_tf.TFParamService
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Vérifier que la machine est disponible
    [Documentation]    Vérifier que la machine est disponible

    &{dataset} =       Retrieve Dataset
    &{datatables} =    Retrieve Datatables

    Given la machine est branchée
    # Le bouton est sur ON.
    And je dispose d'un badge avec un solde de : "${dataset}[solde]"
    When je passe mon badge "${datatables}[datatable_1]"
    Then je constate que mon solde s'affiche : "${dataset}[solde]"


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_26127_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_26127_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =          Get Variable Value    ${TEST_SETUP}
    ${TEST_26127_SETUP_VALUE} =    Get Variable Value    ${TEST_26127_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_26127_SETUP_VALUE is not None
        Run Keyword    ${TEST_26127_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_26127_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_26127_TEARDOWN}.

    ${TEST_26127_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_26127_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =          Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_26127_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_26127_TEARDOWN}
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

    ${solde} =    Get Test Param    DS_solde

    &{dataset} =    Create Dictionary    solde=${solde}

    RETURN    &{dataset}

Retrieve Datatables
    [Documentation]    Retrieves Squash TM's datatables and stores them in a dictionary.
    ...
    ...                For instance, 2 datatables have been defined in Squash TM,
    ...                the first one containing data:
    ...                | name | firstName |
    ...                | Bob  |   Smith   |
    ...                the second one containing data
    ...                | name  | firstName | age |
    ...                | Alice |   Smith   | 45  |
    ...
    ...                First, for each datatable, this keyword retrieves the values of each row
    ...                and stores them in a list, as follows:
    ...                @{row_1_1} =    Create List    name    firstName
    ...
    ...                Then, for each datatable, this keyword creates a list containing all the rows,
    ...                as lists themselves, as follows:
    ...                @{datatable_1} =    Create List    ${row_1_1}    ${row_1_2}
    ...
    ...                Finally, this keyword stores the datatables into the &{datatables} dictionary
    ...                with each datatable name as key, and each datatable list as value :
    ...                &{datatables} =    Create Dictionary    datatable_1=${datatable_1}    datatable_2=${datatable_2}

    @{row_1_1} =    Create List    nom       n°badge
    @{row_1_2} =    Create List    Dupont    10050
    @{datatable_1} =    Create List    ${row_1_1}    ${row_1_2}

    &{datatables} =    Create Dictionary    datatable_1=${datatable_1}

    RETURN    &{datatables}
