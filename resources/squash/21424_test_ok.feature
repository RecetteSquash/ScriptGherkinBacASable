# Automation priority: 5
# Test case importance: Low
# language: en
Feature: test ok

	Scenario: test ok
		Given today is Sunday
		When I ask whether it's Friday yet
		Then I should be told 'Nope'