# language: fr
Fonctionnalité : Vérifier la livraison des produits en cucudepuis autom

	Plan du scénario : Vérifier la livraison des produits en cucudepuis autom
		Étant donné que la machine est en marche
		Et mon "solde" est au moins de <prix>.
		Quand je sélectionne le <produit>.
		Alors la machine me sert un <produit> et mon compte est débité de <prix>
		Étant donné que "Demain" je réserverai un billet d'avion
		Étant donné que Je réserve un "billet" pour Londres

		@JDD;_Expresso
		Exemples :
		| prix | produit |
		| 0.40 | "Expresso" |

		@JDD_Cappûcînô
		Exemples :
		| prix | produit |
		| 0.80 | "Cappûcînô" |

		@JDD_Lungo
		Exemples :
		| prix | produit |
		| 0.5 | "Lungo" |