# Automation priority: null
# Test case importance: Very high
# language: en
Feature: cas 1

	Scenario Outline: cas 1
		Given je saisis l'url <type_user>
		When je renseigne <login> <mdp>
		Then la page d'accueil est <couleur>

		@étudiant
		Examples:
		| couleur | login | mdp | type_user |
		| "vert" | "etud" | "etud" | "étudiant" |

		@formateur
		Examples:
		| couleur | login | mdp | type_user |
		| "bleu" | "form" | "form" | "formateur" |

		@invité
		Examples:
		| couleur | login | mdp | type_user |
		| "blanc" | "invit" | "invit" | "invité" |