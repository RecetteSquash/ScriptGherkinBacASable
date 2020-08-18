# Automation priority: null
# Test case importance: Low
# language: en
Feature: IsItFriday

	Scenario: IsItFriday
		Given today is Sunday
		When I ask whether it's Friday yet
		Then I should be told