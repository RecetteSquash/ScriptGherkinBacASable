# language: en
Feature: CT BDD

	Scenario Outline: CT BDD
		Given la machine est en marche
		When mon solde est au moins de <prix>
		When je sélectionne le <produit>
		Then la machine me sert <produit> et mon compte est débité de <prix>

		@JDD_Cappuccino
		Examples:
		| prix | produit |
		| 1 | "cappuccino" |

		@JDD_Expresso
		Examples:
		| prix | produit |
		| 0.4 | "expresso" |

		@JDD_Lungo
		Examples:
		| prix | produit |
		| 0.5 | "Lungo" |