*** Settings ***
Documentation    Vérifier les produits disponible
Metadata         ID                           391055
Metadata         Automation priority          10
Metadata         Test case importance         Very high
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Vérifier les produits disponible
    [Documentation]    Vérifier les produits disponible

    &{docstrings} =    Retrieve Docstrings

    Given la machine est en marche "${docstrings}[docstring_1]"
    When je liste les produits disponibles. "${docstrings}[docstring_2]"
    # Seuls les produits de la catégorie Café sont vérifiés dans ce test     
    Then je constate que tous les produits suivants sont disponibles :


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_391055_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_391055_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =           Get Variable Value    ${TEST_SETUP}
    ${TEST_391055_SETUP_VALUE} =    Get Variable Value    ${TEST_391055_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_391055_SETUP_VALUE is not None
        Run Keyword    ${TEST_391055_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_391055_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_391055_TEARDOWN}.

    ${TEST_391055_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_391055_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =           Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_391055_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_391055_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END

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

    ${docstring_1} =    Set Variable    grherbrenbrfbfdv rfgre\n
    ${docstring_2} =    Set Variable    tnertfedbchtrtjyrj

    &{docstrings} =    Create Dictionary    docstring_1=${docstring_1}    docstring_2=${docstring_2}

    RETURN    &{docstrings}
