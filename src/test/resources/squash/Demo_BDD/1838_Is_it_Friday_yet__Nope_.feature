# Automation priority: null
# Test case importance: Low
# language: en
Feature: Is it Friday yet (Nope)

	Scenario: Is it Friday yet (Nope)
		Given today is Sunday
		When I ask whether it's Friday yet
		Then I should be told "Nope"