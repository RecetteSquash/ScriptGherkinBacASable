# Automation priority: null
# Test case importance: Low
# language: en
Feature: test ok-Copie1

	Scenario: test ok-Copie1
		Given today is Sunday
		When I ask whether it's Friday yet
		Then I should be told 'Nope'