# language: en
Feature: Vérifier que la machine est disponible

	Scenario: Vérifier que la machine est disponible
		Given la machine est branchée.
		When je passe mon badge.
		Then je constate que mon solde s'affiche.