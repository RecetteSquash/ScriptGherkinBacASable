# Automation priority: null
# Test case importance: Low
# language: en
Feature: Is it Friday yet

	Scenario Outline: Is it Friday yet
		Given today is Sunday
		When I ask whether it's Friday yet
		Then I should be told <answer>

		@jdd_nope
		Examples:
		| answer |
		| "Nope" |

		@jdd_yep
		Examples:
		| answer |
		| "Yep" |