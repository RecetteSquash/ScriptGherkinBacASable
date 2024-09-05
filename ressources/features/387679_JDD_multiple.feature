# language: en
Feature: JDD multiple

	Scenario Outline: JDD multiple
		Given la machine est en marche
		And mon solde est au moins de <prix>
		When je selectionne le <produit>
		Then la machine me sert un <produit> et mon compte est débité de <prix>

		@café
		Examples:
		| prix | produit |
		| 0.50 | "café" |

		@expresso
		Examples:
		| prix | produit |
		| 0.40 | "expresso" |

		@matcha
		Examples:
		| prix | produit |
		| 1 | "matcha" |