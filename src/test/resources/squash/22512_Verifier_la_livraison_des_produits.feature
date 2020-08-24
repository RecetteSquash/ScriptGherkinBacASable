# PrioritÃ¤t der Automatisierung: 10
# Wichtigkeit des Testfalls: Sehr hoch
# language: de
Funktionalität: Vérifier la livraison des produits

	Szenariogrundriss: Vérifier la livraison des produits
		Gegeben la machine est en marche.
		Und mon solde est au moins de <prix>.
		Wenn je sélectionne le <produit>.
		Dann la machine me sert un <produit> et mon compte est débité de <prix>.

		@JDD_Cappûcînô
		Beispiele:
		| prix | produit |
		| 1 | "Cappûcînô" |

		@JDD_Expresso
		Beispiele:
		| prix | produit |
		| 0.4 | "Expresso" |

		@JDD_Lungo
		Beispiele:
		| prix | produit |
		| 0.5 | "lungo" |