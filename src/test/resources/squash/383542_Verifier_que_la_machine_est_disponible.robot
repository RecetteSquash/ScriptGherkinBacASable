# Automation priority: 10
# Test case importance: Very high
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
Vérifier que la machine est disponible
	Given la machine est branchée.
	Given je passe mon badge.
	Given je constate que mon solde s'affiche.