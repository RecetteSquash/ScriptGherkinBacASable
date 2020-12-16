# Priorité d'automatisation: null
# Importance du cas de test: Moyenne
# language: fr
Fonctionnalité: cas6_BDD

	Plan du scénario: cas6_BDD
		Étant donné que je vais dans le champ
		Quand je ramasse <nombre> <fruits>
		Alors je peux faire le dessert <dessert>

		@JDD_1
		Exemples:
		| dessert | fruits | nombre |
		| "tarte" | "pommes" | 6 |

		@JDD_2
		Exemples:
		| dessert | fruits | nombre |
		| "confiture" | "mirabelles" | 150 |