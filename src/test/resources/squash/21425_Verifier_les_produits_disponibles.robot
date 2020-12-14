# Automation priority: null
# Test case importance: Very high
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
Vérifier les produits disponibles
	${row_1_1} =	Create List	produit	prix
	${row_1_2} =	Create List	Expresso	0.40
	${row_1_3} =	Create List	Lungo	0.50
	${row_1_4} =	Create List	Cappuccino	0.80
	${datatable_1} =	Create List	${row_1_1}	${row_1_2}	${row_1_3}	${row_1_4}

	${docstring_1} =	Set Variable	Le message "Choisissez votre produit" apparait

	Given la machine est en marche "${docstring_1}"
	When je liste les produits disponibles
	# Seuls les produits de la catégorie Café 
	# sont vérifiés dans ce test
	Then je constata que mon solde s'affiche "${datatable_1}"
	# le prix des produits s'affiche à droite sur l'écran 
	# et le nom des produits à gauche