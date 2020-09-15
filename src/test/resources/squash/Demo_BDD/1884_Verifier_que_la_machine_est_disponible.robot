# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
Vérifier que la machine est disponible
	Given la machine est branchée
	When je passe mon badge
	Then je constate que mon solde s'affiche