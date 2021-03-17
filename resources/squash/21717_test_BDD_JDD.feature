# Automation priority: null
# Test case importance: Low
# language: en
Feature: test BDD JDD

	Scenario Outline: test BDD JDD
		Given je suis connecté à l'environnement <env>

		@develop
		Examples:
		| env |
		| "int" |

		@Integration
		Examples:
		| env |
		| "int" |