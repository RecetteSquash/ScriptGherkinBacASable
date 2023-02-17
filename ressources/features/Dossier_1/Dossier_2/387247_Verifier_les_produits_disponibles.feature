# language: en
Feature: Vérifier les produits disponibles

	Scenario: Vérifier les produits disponibles
		Given Given la machine est en marche.
		When je liste les produits disponibles.
		Then je constate que tous les produits suivants sont disponibles : expresso, lungo, cappucino