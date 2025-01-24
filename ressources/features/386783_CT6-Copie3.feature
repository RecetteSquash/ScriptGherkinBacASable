# language: en
Feature: CT6-Copie3

	Scenario: CT6-Copie3
		Given je suis utilisateur
			"""
			Mes Infos
			"""
			#commentaire pour test
		When je lance ce cas de test de prio haute
			| produit | prix |
			| Expresso | 0.40 |
		Then ce cas de test est exécuté