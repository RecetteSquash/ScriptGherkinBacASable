# Automation priority: 28000
# Test case importance: High
# language: en
Feature: BDD1

	Scenario Outline: BDD1
		Given Je suis un <superheros>
		When Des <vilains> commettent des crimes
		Then J'interviens pour <action>

		@Superman
		Examples:
		| action | superheros | vilains |
		| "Frire sur place" | "Superman" | "Lex Luthor" |

		@Wonder_Woman
		Examples:
		| action | superheros | vilains |
		| "Le ligoter au lasso" | "Wonder Woman" | "nazi" |