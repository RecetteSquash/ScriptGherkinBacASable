# language: en
Feature: Check that the machine is available

	Scenario: Check that the machine is available
		Given the mahicne is available
			#The button is ON.
		And I have a badge with a balance of: <balance>
		When I swipe my badge
			| name | badge number |
			| Dupont | 10050 |
		Then I see that my balance is displayed: <balance>