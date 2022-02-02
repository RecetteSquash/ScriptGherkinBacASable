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
	${row_1_1} =	Create List	men	women
	${row_1_2} =	Create List	IronMan	Pepper
	${datatable_1} =	Create List	${row_1_1}	${row_1_2}
	${row_2_1} =	Create List	Jeux Vidéo	Persos
	${row_2_2} =	Create List	Horizon Zero Dawn	Aloy
	${datatable_2} =	Create List	${row_2_1}	${row_2_2}
	${row_3_1} =	Create List	produit	prix
	${row_3_2} =	Create List	Expresso	0.40
	${row_3_3} =	Create List	Lungo	0.50
	${row_3_4} =	Create List	Cappuccino	0.80
	${datatable_3} =	Create List	${row_3_1}	${row_3_2}	${row_3_3}	${row_3_4}

	[Setup] Test Setup

	Given la machine est en marche "${datatable_1}"
	When je liste les produits disponibles "${datatable_2}"
	# Seuls les produits de la catégorie Café sont vérifiés dans ce test
	Then je constate que tous les produits suivants sont disponibles : "${datatable_3}"
	# Le nom des produits doivent s'afficher en gras et le prix en rouge

	[Teardown] Test Teardown