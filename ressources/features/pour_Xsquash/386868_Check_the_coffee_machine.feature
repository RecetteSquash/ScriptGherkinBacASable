# language: en 
Feature: Check the coffee machine
	The aim is to check that the coffee machine works properly.

	# Optional context. If a context is present here, it will be re-used as an additional condition for each script scenario.
	Background:
		Given a coffee machine


	# -------------------------- SCENARIO EXAMPLE N°1 -------------------------- 
	# Simple scenario example
	Scenario: Check that the machine is available.
		Given the machine is operating.
		When I use my badge.
		Then I can check my balance.
		
	# -------------------------- SCENARIO EXAMPLE N°3 -------------------------- 
	# Example of a scenario with a data table and configuration of test steps
	# Upon execution, the parameters' values in between <> will be substituted
	# The scenario will be played once for each dataset (that is to say each line)
	Scenario Outline: Check the delivery of products.
		Given the machine is operating
		And my account contains at least <price>.
		When I select <product>.
		Then the machine delivers me a <product> and my account is charged <price>.
		Examples:
		| product			| price |
		| Expresso		| 0.40  |
		| Lungo				| 0.50  |
		| Cappuccino	| 0.80  |
