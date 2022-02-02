# Automation priority: 10
# Test case importance: Very high
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${_TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${_TEST_23722_SETUP}	Get Variable Value	${TEST 23722 SETUP}
	Run Keyword If	${_TEST_SETUP} is not None	${_TEST_SETUP}
	Run Keyword If	${_TEST_23722_SETUP} is not None	${_TEST_23722_SETUP}

Test Teardown
	${_TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	${_TEST_23722_TEARDOWN}	Get Variable Value	${TEST 23722 TEARDOWN}
	Run Keyword If	${_TEST_TEARDOWN} is not None	${_TEST_TEARDOWN}
	Run Keyword If	${_TEST_23722_TEARDOWN} is not None	${_TEST_23722_TEARDOWN}

*** Test Cases ***
Vérifier les produits disponibles
	${docstring_1} =	Set Variable	Le message "Choissisez votre produit" apparait.
	${docstring_2} =	Set Variable	Docstring non pris en compte à cause de la datatable\nDocstring non pris en compte à cause de la datatable\nDocstring non pris en compte à cause de la datatable\nDocstring non pris en compte à cause de la datatable

	[Setup] Test Setup

	Given la machine est en marche "${docstring_1}"
	When je liste les produits disponibles
	# Seuls les produits de la catégorie Café sont vérifiés dans ce test
	Then je constate que tous les produits suivants sont disponibles : "${docstring_2}"
	# Le nom des produits doivent s'afficher en gras et le prix en rouge

	[Teardown] Test Teardown