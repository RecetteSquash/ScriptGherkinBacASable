*** Settings ***
Documentation    BDD 1
...
...              Ceci est un test pour la description. Ceci est un test pour la description.
...               Ceci est un test pour la description. Ceci est un test pour la 
...              description. Ceci est un test pour la description. 
...
...              Ceciestuntestpourladescription.Ceciestuntestpourladescription.Ceciestuntestpourladescription.Ceciestuntestpourladescription.C
Metadata    ID                           147
Metadata    Reference                    123-BDD/785
Metadata    Automation priority          1
Metadata    Test case importance         High
Resource    squash_resources.resource


*** Test Cases ***
BDD 1
    Documentation    BDD 1

    [Setup]    Test Setup
    [Teardown]    Test Teardown


*** Keywords ***
Test Setup
    Documentation    test setup
    ...              You can define the keyword $TEST_SETUP for setting up all your tests.
    ...              You can define the keyword $TEST_147_SETUP for setting up this specific test (BDD 1).
    ...              If both are defined, $TEST_147_SETUP will be run after $TEST_SETUP.

    If    $TEST_SETUP is not None    Run Keyword    ${TEST_SETUP}
    If    $TEST_147_SETUP is not None    Run Keyword    ${TEST_147_SETUP}

Test Teardown
    Documentation    test teardown
    ...              You can define the keyword $TEST_TEARDOWN for tearing down all your tests.
    ...              You can define the keyword $TEST_147_TEARDOWN for tearing down this specific test (BDD 1).
    ...              If both are defined, $TEST_147_TEARDOWN will be run before $TEST_TEARDOWN.

    If    $TEST_147_TEARDOWN is not None    Run Keyword    ${TEST_147_TEARDOWN}
    If    $TEST_TEARDOWN is not None    Run Keyword    ${TEST_TEARDOWN}
