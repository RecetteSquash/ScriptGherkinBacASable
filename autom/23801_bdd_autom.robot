# Automation priority: null
# Test case importance: Very high
*** Settings ***
Resource	squash_resources.resource
Library		squash_tf.TFParamService

*** Keywords ***
Test Setup
	${_TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${_TEST_23801_SETUP}	Get Variable Value	${TEST 23801 SETUP}
	Run Keyword If	${_TEST_SETUP} is not None	${_TEST_SETUP}
	Run Keyword If	${_TEST_23801_SETUP} is not None	${_TEST_23801_SETUP}

Test Teardown
	${_TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	${_TEST_23801_TEARDOWN}	Get Variable Value	${TEST 23801 TEARDOWN}
	Run Keyword If	${_TEST_TEARDOWN} is not None	${_TEST_TEARDOWN}
	Run Keyword If	${_TEST_23801_TEARDOWN} is not None	${_TEST_23801_TEARDOWN}

*** Test Cases ***
bdd autom
	${type_user} =	Get Test Param	DS_type_user
	${login} =	Get Test Param	DS_login
	${mdp} =	Get Test Param	DS_mdp
	${couleur} =	Get Test Param	DS_couleur

	[Setup]	Test Setup

	Given je saisis l'url ${type_user}
	When je renseigne ${login} ${mdp}
	Then la page d'accueil est ${couleur}

	[Teardown]	Test Teardown