# language: en
Feature: testbacbdd

	Scenario: testbacbdd
		Given today is Sunday
		When I ask whether it's Friday yet
		Then I should be told "tomates"