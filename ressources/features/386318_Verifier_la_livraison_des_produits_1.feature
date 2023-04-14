# language: en
Feature: Vérifier la livraison des produits 1

	Scenario: Vérifier la livraison des produits 1
		Given on solde est au moins de "0,40" "€".
			| produit | prix |
			| Expresso | 0.40 |
		When je sélectionne le \"espresso\".
			"""
			zertyukjfzjhfzehfhzuif docstring
			"""
			#efegerg cecci est un comm
		Then mon solde est au moins de "0.50" "€".
			#commentaire
		And la machine me sert un "lungo" et mon compte est débité de "0.50" "€".
		And mon solde est au moins de "1" "€". When je sélectionne le "cappûcînô". Then la machine me sert un "cappûcînô" et mon compte est débité de "1" "€".