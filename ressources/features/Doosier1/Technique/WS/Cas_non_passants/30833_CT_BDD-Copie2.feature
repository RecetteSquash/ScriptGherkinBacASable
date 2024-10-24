# language: en
Feature: CT BDD-Copie2

	Scenario Outline: CT BDD-Copie2
		Given la machine est en marche
		And mon "solde" est au moins de <prix>.
		When je sélectionne le <produit>.
			"""
			ceci est une docsting
			"""
			#commentaire numéro 1
			#
		Then la machine me sert un <produit> et mon compte est débité de <prix>
			| produit | prix |
			| Expresso | 0.40 |

		@JDD_Expresso
		Examples:
		| prix | produit |
		| 0.40 | "Expresso" |

		@JDD_Lungo
		Examples:
		| prix | produit |
		| 0.5 | "Lungo" |