# Automation priority: null
# Test case importance: Low
# language: en
Feature: Is it Friday yet (param CT)

	Scenario Outline: Is it Friday yet (param CT)
		Given today is Sunday
		When I ask whether it's Friday yet
		Then I should be told <answer>

		@jdd_Nope
		Examples:
		| answer |
		| "Nope" |

		@jdd_Yep
		Examples:
		| answer |
		| "Yep" |