# Automation priority: null
# Test case importance: Low
# language: en
Feature: It's Friday

	Scenario: It's Friday
		Given today is Sunday
		Given I ask whether it's Friday yet
		Given I should be told "Nope"