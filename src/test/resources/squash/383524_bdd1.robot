# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
bdd1
	Given "param1" "param2" texte
	Given "param1" texte "param2"
	Given texte "param" texte "param2"
	Given "param1" texte "param2" texte
	Given texte "par1" "par2" texte
	Given je suis un pas de test BDD