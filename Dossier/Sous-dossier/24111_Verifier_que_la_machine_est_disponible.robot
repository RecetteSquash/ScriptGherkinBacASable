# Automation priority: 10
# Test case importance: High
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${_TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${_TEST_24111_SETUP}	Get Variable Value	${TEST 24111 SETUP}
	Run Keyword If	${_TEST_SETUP} is not None	${_TEST_SETUP}
	Run Keyword If	${_TEST_24111_SETUP} is not None	${_TEST_24111_SETUP}

Test Teardown
	${_TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	${_TEST_24111_TEARDOWN}	Get Variable Value	${TEST 24111 TEARDOWN}
	Run Keyword If	${_TEST_TEARDOWN} is not None	${_TEST_TEARDOWN}
	Run Keyword If	${_TEST_24111_TEARDOWN} is not None	${_TEST_24111_TEARDOWN}

*** Test Cases ***
Vérifier que la machine est disponible
	${row_1_1} =	Create List	nom	n°badge 
	${row_1_2} =	Create List	Dupont 	10050
	${datatable_1} =	Create List	${row_1_1}	${row_1_2}

	[Setup]	Test Setup

	Given la machine est branchée.
	# Le bouton est sur ON.
	And je dispose d'un badge avec un solde de ${solde}.
	When je passe mon badge. "${datatable_1}"
	Then je constate que mon solde s'affiche : ${solde}

	[Teardown]	Test Teardown