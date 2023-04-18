*** Settings ***
Documentation    Vérifier les produits disponibles
Metadata         ID                           386632
Metadata         Automation priority          10
Metadata         Test case importance         Very high
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Vérifier les produits disponibles
    [Documentation]    Vérifier les produits disponibles

    &{datatables} =    Retrieve Datatables
    &{docstrings} =    Retrieve Docstrings

    Given la machine est en marche "${docstrings}[docstring_1]"
    When je liste les produits disponibles. "${docstrings}[docstring_2]"
    # Seuls les produits de la catégorie Café sont vérifiés dans ce test       
    Then je constate que tous les produits suivants sont disponibles : "${datatables}[datatable_1]"
    # Vérifier un commentaire + une table de données  


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

    @{row_1_1} =    Create List    produit       prix
    @{row_1_2} =    Create List    Expresso      0.40
    @{row_1_3} =    Create List    Lungo         0.50
    @{row_1_4} =    Create List    Cappuccino    0.80
    @{datatable_1} =    Create List    ${row_1_1}    ${row_1_2}    ${row_1_3}    ${row_1_4}

    &{datatables} =    Create Dictionary    datatable_1=${datatable_1}

    RETURN    &{datatables}

Retrieve Docstrings
    [Documentation]    Retrieves Squash TM's docstrings and stores them in a dictionary.
    ...
    ...                For instance, two docstrings have been defined in Squash TM,
    ...                the first one containing the string
    ...                "I am the
    ...                FIRST    docstring",
    ...                the second one containing the string "I am the second docstring"
    ...
    ...                First, this keyword retrieves values and converts them to an inline string :
    ...                ${docstring_1} =    Set Variable    I am the\nFIRST\tdocstring"
    ...
    ...                Then, this keyword stores the docstrings into the &{docstrings} dictionary
    ...                with each docstring name as key, and each docstring value as value :
    ...                ${docstrings} =    Create Dictionary    docstring_1=${docstring_1}    docstring_2=${docstring_2}

    ${docstring_1} =    Set Variable    Le message "Choisissez votre produit" apparait.
    ${docstring_2} =    Set Variable    le prix des produits s'affiche à droite sur l'écran et le nom des produits à gauche

    &{docstrings} =    Create Dictionary    docstring_1=${docstring_1}    docstring_2=${docstring_2}

    RETURN    &{docstrings}
