# language: en
Feature: Vérifier la livraison des produits niveau 2 JDD

	Scenario Outline: Vérifier la livraison des produits niveau 2 JDD
		Given la machine est en marche.
		And mon solde est au moins de <prix>.
		When je sélectionne le <produit>.
		Then la machine me sert un <produit> et mon compte est débité de <prix>.

		@JDD_Cappûcînô
		Examples:
		| prix | produit |
		| 1 | "Cappûcînô" |

		@JDD_Exrpresso
		Examples:
		| prix | produit |
		| 0.4 | "exrpresso" |

		@JDD_Lungo
		Examples:
		| prix | produit |
		| 0.5 | "lungo" |