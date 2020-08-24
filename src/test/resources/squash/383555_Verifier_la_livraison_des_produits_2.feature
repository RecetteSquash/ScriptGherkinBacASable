# Automation priority: 10
# Test case importance: High
# language: en
Feature: Vérifier la livraison des produits 2

	Scenario: Vérifier la livraison des produits 2
		Given a machine est en marche.
		And mon solde est au moins de 0.50 "€".
		When je sélectionne le "lungo".
		Then la machine me sert un "lungo" et mon compte est débité de 0.50 "€".