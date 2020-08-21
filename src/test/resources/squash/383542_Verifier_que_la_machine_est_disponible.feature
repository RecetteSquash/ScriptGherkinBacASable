# Automation priority: 10
# Test case importance: Very high
# language: en
Feature: Vérifier que la machine est disponible

	Scenario: Vérifier que la machine est disponible
		Given la machine est branchée.
		Given je passe mon badge.
		Given je constate que mon solde s'affiche.