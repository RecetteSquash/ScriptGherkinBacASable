# Automation priority: 10
# Test case importance: High
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
Vérifier que la machine est disponible
	${row_1_1} =	Create List	nom	n°badge 
	${row_1_2} =	Create List	Dupont 	10050
	${datatable_1} =	Create List	${row_1_1}	${row_1_2}

	Given la machine est branchée.
	# Le bouton est sur ON.
	And je dispose d'un badge avec un solde de ${solde}.
	When je passe mon badge. "${datatable_1}"
	Then je constate que mon solde s'affiche : ${solde}
