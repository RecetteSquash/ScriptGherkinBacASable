# Automation priority: null
# Test case importance: Low
# language: en
Feature: test MAJUSCULES/minulscules

	Scenario: test MAJUSCULES/minulscules
		Given Demain c'est Mardi
		Given Demain c'est <jour>
			| jour |
			| lundi |
			| mardi |
			| mercredi |
			| jeudi |
			| vendredi |
			| samedi |
			| dimanche |
			"""
			Si cela tombe un week-end, ce sera une bonne nouvelle.
			"""
			#Il faudra en tenir compte.