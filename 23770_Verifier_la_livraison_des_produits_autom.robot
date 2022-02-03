# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource
Library		squash_tf.TFParamService

*** Keywords ***
Test Setup
	${_TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${_TEST_23770_SETUP}	Get Variable Value	${TEST 23770 SETUP}
	Run Keyword If	${_TEST_SETUP} is not None	${_TEST_SETUP}
	Run Keyword If	${_TEST_23770_SETUP} is not None	${_TEST_23770_SETUP}

Test Teardown
	${_TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	${_TEST_23770_TEARDOWN}	Get Variable Value	${TEST 23770 TEARDOWN}
	Run Keyword If	${_TEST_TEARDOWN} is not None	${_TEST_TEARDOWN}
	Run Keyword If	${_TEST_23770_TEARDOWN} is not None	${_TEST_23770_TEARDOWN}

*** Test Cases ***
Vérifier la livraison des produits autom
	${prix} =	Get Test Param	DS_prix
	${produit} =	Get Test Param	DS_produit

	[Setup] Test Setup

	Given la machine est en marche
	And mon "solde" est au moins de ${prix}
	When je sélectionne le ${produit}
	Then la machine me sert un ${produit} et mon compte est débité de ${prix}

	[Teardown] Test Teardown