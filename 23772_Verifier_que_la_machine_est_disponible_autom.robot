# Automation priority: null
# Test case importance: Very high
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${_TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${_TEST_23772_SETUP}	Get Variable Value	${TEST 23772 SETUP}
	Run Keyword If	${_TEST_SETUP} is not None	${_TEST_SETUP}
	Run Keyword If	${_TEST_23772_SETUP} is not None	${_TEST_23772_SETUP}

Test Teardown
	${_TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	${_TEST_23772_TEARDOWN}	Get Variable Value	${TEST 23772 TEARDOWN}
	Run Keyword If	${_TEST_TEARDOWN} is not None	${_TEST_TEARDOWN}
	Run Keyword If	${_TEST_23772_TEARDOWN} is not None	${_TEST_23772_TEARDOWN}

*** Test Cases ***
Vérifier que la machine est disponible autom
	[Setup] Test Setup

	Given la machine est branchée.
	When je passe mon badge.
	Then je constate que mon solde s'affiche.

	[Teardown] Test Teardown