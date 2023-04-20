# language: en
Feature: Vérifier la livraison des produits

	Scenario Outline: Vérifier la livraison des produits
		Given la machine est en marche.
		And mon "solde" est au moins de <prix>.
		When je sélectionne le <produit>.
		Then la machine me sert un <produit> et mon compte est débité de <prix>.

		@Cappûcînô
		Examples:
		| prix | produit |
		| 1 | "cappûcînô" |

		@Expresso
		Examples:
		| prix | produit |
		| 0.4 | "expresso" |

		@Lungo
		Examples:
		| prix | produit |
		| 0.5 | "lungo" |