# Automation priority: 10
# Test case importance: Very high
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
Vérifier les produits disponibles
	${docstring_1} =	Set Variable	Le message "Choisissez votre produit" apparait
	${docstring_2} =	Set Variable	je suis un ou une\ndocstring sur plusieurs\nligne et c'est\ncool

	Given la machine est en marche "${docstring_1}"
	When je liste les produits disponibles "${docstring_2}"
	# Seuls les produits de la catégorie Café 
	# sont vérifiés dans ce test
	Then je constata que mon solde s'affiche
	# le prix des produits s'affiche à droite sur l'écran 
	# et le nom des produits à gauche