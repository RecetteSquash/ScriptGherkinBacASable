# Automation priority: 10
# Test case importance: Very high
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${_TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${_TEST_23723_SETUP}	Get Variable Value	${TEST 23723 SETUP}
	Run Keyword If	${_TEST_SETUP} is not None	${_TEST_SETUP}
	Run Keyword If	${_TEST_23723_SETUP} is not None	${_TEST_23723_SETUP}

Test Teardown
	${_TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	${_TEST_23723_TEARDOWN}	Get Variable Value	${TEST 23723 TEARDOWN}
	Run Keyword If	${_TEST_TEARDOWN} is not None	${_TEST_TEARDOWN}
	Run Keyword If	${_TEST_23723_TEARDOWN} is not None	${_TEST_23723_TEARDOWN}

*** Test Cases ***
Vérifier que la machine est disponible a
	[Setup] Test Setup

	Given la machine est branchée.
	When je passe mon badge.
	Then je constate que mon solde s'affiche.

	[Teardown] Test Teardown