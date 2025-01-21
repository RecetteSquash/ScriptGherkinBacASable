# language: en
Feature: BDD avec JDD

	Scenario Outline: BDD avec JDD
		Given la machine est en marche.
		And mon solde est au moins de <prix>.
		When je sélectionne le <produit>.
		Then la machine me sert un <produit> et mon compte est débité de <prix>.

		@JDD_Expresso
		Examples:
		| prix | produit |
		| 0.4 | "expresso" |

		@JDD_Lundo
		Examples:
		| prix | produit |
		| 0.5 | "lungo" |

		@JDD_capp
		Examples:
		| prix | produit |
		| 1 | "cap" |