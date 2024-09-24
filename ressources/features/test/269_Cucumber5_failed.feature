# language: en
Feature: Cucumber5_failed

	Scenario: Cucumber5_failed
		Given I run a step
		When I run a failed step
		Then My step is skipped
		And My step is skipped