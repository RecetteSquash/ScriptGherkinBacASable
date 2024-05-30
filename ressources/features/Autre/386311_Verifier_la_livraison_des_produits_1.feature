# language: en
Feature: Vérifier la livraison des produits 1

	Scenario: Vérifier la livraison des produits 1
		Given la machine est en marche.
		And mon solde est au moins de "0,40" "€".
		When je sélectionne le "espresso".
		Then la machine me sert un "espresso" et mon compte est débité de "0,40" "€".