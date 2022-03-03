# Priorité d'automatisation: 10
# Importance du cas de test: Haute
# language: fr
Fonctionnalité: Vérifier que la machine est disponible

	Scénario: Vérifier que la machine est disponible
		Étant donné que la machine est branchée.
			#Le bouton est sur ON.
		Et je dispose d'un badge avec un solde de <solde>.
		Quand je passe mon badge.
			| nom | n°badge |
			| Dupont | 10050 |
		Alors je constate que mon solde s'affiche : <solde>