# Automation priority: 10
# Test case importance: Very high
# language: en
Feature: Vérifier les produits disponibles

	Scenario: Vérifier les produits disponibles
		Given la machine est en marche
			| chien | gourmandise|
			| beagle | oui |
			| dog | oui |
			| bichon | oui |
			| berger | oui |
		When je liste les produits disponibles
			| j'ai suivi| avec accent é|
			| hello |bonjour |
			#Seuls les produits de la catégorie Café sont vérifiés 
			#dans ce test
		Then je constate que tous les produits suivants sont disponibles
			| produit | prix |
			| Expresso | 0.40 |
			| Lungo | 0.50 |
			| Cappuccino| 0.80 |
			"""
			les prix des produits s'affiche à droite sur l'écran
			Le nom des produits à gauche
			"""