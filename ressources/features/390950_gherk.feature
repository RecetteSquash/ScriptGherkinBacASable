# language: fr
Fonctionnalité: gherk
  
  Scénario: Vérifier les produits disponibles.
		Etant donné que la machine est en marche.
		Quand je liste les produits disponibles.
		Alors je constate que tous les produits suivants sont disponibles :
		| produit			| prix  |
		| Expresso		| 0.40  |
		| Lungo				| 0.50  |
		| Cappuccino	| 0.80  |
	
	
		Scénario: Vérifier que la machine est disponible.
		Etant donné que la machine est branchée.
		Quand je passe mon badge.
		Alors je constate que mon solde s'affiche.