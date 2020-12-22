# Automation priority: 1
# Test case importance: LOW
# language: fr
Fonctionnalité: Gherkin 002
  
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
