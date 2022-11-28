# language: en
Feature: BDD 5.0

	Scenario Outline: BDD 5.0
		Given some action
			| produit | prix |
			| Expr\|esso | 0.40 |
		Given with <named_param>

		@JDD1
		Examples:
		| named_param |
		| "$oulah" |