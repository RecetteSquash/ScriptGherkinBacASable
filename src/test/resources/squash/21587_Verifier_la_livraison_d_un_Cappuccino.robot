# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
Vérifier la livraison d'un Cappuccino
	Given la machine est branchée
	And mon solde est d'au moins "0.80"
	When je sélectionne le "Cappuccino"
	Then la machine me sert un "Cappuccino" et mon compte est débité de "0.80"