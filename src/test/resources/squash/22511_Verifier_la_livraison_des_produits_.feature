# Automation priority: 10
# Test case importance: Very high
# language: en
Feature: Vérifier la livraison des produits.

	Scenario Outline: Vérifier la livraison des produits.
		Given la machine est en marche.
		When je sélectionne le <produit>.
		Then la machine me sert un <produit> et mon compte est débité de <prix>.

		@JDD_Expresso
		Examples:
		| prix | produit |
		| 0.4 | "Expresso" |