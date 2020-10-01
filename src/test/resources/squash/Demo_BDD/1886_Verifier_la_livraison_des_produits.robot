# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource
Library		squash_tf.TFParamService

*** Test Cases ***
Vérifier la livraison des produits
	${prix} =	Get Test Param	DS_prix
	${produit} =	Get Test Param	DS_produit

	Given la machine est branchée
	And mon solde est d'au moins ${prix}
	When je sélectionne le ${produit}
	Then la machine me sert un ${produit} et mon compte est débité de ${prix}