# Prioridad de automatización: 10
# Importancia del caso de prueba: Muy alta
# language: es
Característica: Vérifier la livraison des produits

	Esquema del escenario: Vérifier la livraison des produits
		Dado la machine est en marche.
		Y mon solde est au moins de <prix>.
		Cuando je sélectionne le <produit>.
		Entonces la machine me sert un <produit> et mon compte est débité de <prix>.

		@JDD_Cappûcînô
		Ejemplos:
		| prix | produit |
		| 1 | "Cappûcînô" |

		@JDD_Expresso
		Ejemplos:
		| prix | produit |
		| 0.4 | "Expresso" |

		@JDD_Lungo
		Ejemplos:
		| prix | produit |
		| 0.5 | "lungo" |