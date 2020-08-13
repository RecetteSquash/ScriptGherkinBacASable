# language: en
Feature: testbacbdd-ok

	Scenario: testbacbdd-ok
		Given today is Sunday
		When I ask whether it's Friday yet
		Then I should be told "Nope"