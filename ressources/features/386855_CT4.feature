# language: en
Feature: CT4

	Scenario Outline: CT4
		Given je suis utilisateur
		When j'execute ce cas de test de prio moyenne
		Then ce cas de test est <exe>

		@EXE1
		Examples:
		| exe |
		| "Exe2" |

		@Exe
		Examples:
		| exe |
		| "pas exe" |

		@Exe3
		Examples:
		| exe |
		| "Exe3" |