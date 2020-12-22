# Automation priority: null
# Test case importance: LOW
# language: fr
Fonctionnalité: Gherkin 02
  
  
  	Scénario: Vérifier les produits disponibles.
		Etant donné que la machine est en route.
		Quand je liste les produits disponibles.
		Alors je constate que tous les produits suivants sont disponibles :
		| produit			| prix  |
		| Expresso		| 0.40  |
		| Lungo				| 0.50  |
		| Cappuccino	| 0.80  |