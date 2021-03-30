# Automation priority: null
# Test case importance: Medium
# language: en
Feature: Cas de test historique v2

	Scenario: Cas de test historique v2
		Given today is Sunday
		Given I ask whether it's Friday yet
		Given I should be told "Nope"