# language: en
Feature: Vérifier la livraison des produits en cucudepuis autom

	Scenario Outline: Vérifier la livraison des produits en cucudepuis autom
		Given la machine est en marche
		And mon "solde" est au moins de <prix>.
		When je sélectionne le <produit>.
		Then la machine me sert un <produit> et mon compte est débité de <prix>

		@JDD_Expresso
		Examples:
		| prix | produit |
		| 0.40 | "Expresso" |

		@JDD_Cappûcînô
		Examples:
		| prix | produit |
		| 0.80 | "Cappûcînô" |

		@JDD_Lungo
		Examples:
		| prix | produit |
		| 0.5 | "Lungo" |