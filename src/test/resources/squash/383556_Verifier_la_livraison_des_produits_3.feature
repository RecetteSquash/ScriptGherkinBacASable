# Automation priority: 10
# Test case importance: Medium
# language: en
Feature: Vérifier la livraison des produits 3

	Scenario: Vérifier la livraison des produits 3
		Given la machine est en marche.
		Given mon solde est au moins de 1 "€".
		Given je sélectionne le "cappûcînô".
		Given la machine me sert un "cappûcînô" et mon compte est débité de 1 "€".