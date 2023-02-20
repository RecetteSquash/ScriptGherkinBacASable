# language: en
Feature: Vérifier la livraison des produits 1

	Scenario: Vérifier la livraison des produits 1
		Given la machine est en marche.
			"""
			le prix des produits s'affiche à droite sur l'écran et le nom des produits à gauche
			"""
		And mon solde est au moins de 0,40 "€".
		When je sélectionne le "espresso".
			#Seuls les produits de la catégorie Café sont vérifiés dans ce test
		Then je constate que tous les produits suivants sont disponibles :
			| produit            | prix  |
			| Expresso        | 0.40  |
			| Lungo              | 0.50  |
			| Cappuccino    | 0.80  |