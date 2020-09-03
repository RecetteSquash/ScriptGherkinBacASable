# Automation priority: null
# Test case importance: Low
# language: en
Feature: Is it Friday yet

	Scenario Outline: Is it Friday yet
		Given today is Sunday
		When I ask whether it's Friday yet
		Given I should be told <answer>

		@jdd_Nope
		Examples:
		| answer |
		| "Nope" |

		@jdd_Yep
		Examples:
		| answer |
		| "Yep" |