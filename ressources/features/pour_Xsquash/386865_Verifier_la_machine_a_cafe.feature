# language: fr 
Fonctionnalité: Vérifier la machine à café 
	Il s'agit de vérifier le bon fonctionnement de la machine à café.
	
	
	Contexte:
		Soit une machine à café.


	# -------------------------- EXEMPLE SCENARIO 1 -------------------------- 
	# Exemple de scénario simple
	Scénario: Vérifier que la machine est disponible.
		Etant donné que la machine est branchée.
		Quand je passe mon badge.
		Alors je constate que mon solde s'affiche.


	# -------------------------- EXEMPLE SCENARIO 3 -------------------------- 
	# Exemple de scénario avec table de données et paramétrage des pas de test
	# A l'exécution, les valeurs de paramètres entre <> seront substituées
	# Le scénario sera joué une fois pour chaque jeu de données
	Plan du Scénario: Vérifier la livraison des produits.
		Etant donné que la machine est en marche.
		Et que mon solde est au moins de <prix>.
		Quand je sélectionne le <produit>.
		Alors la machine me sert un <produit> et mon compte est débité de <prix>.
		Exemples:
		| produit			| prix  |
		| Expresso		| 0.40  |
		| Lungo				| 0.50  |
		| Cappuccino	| 0.80  |