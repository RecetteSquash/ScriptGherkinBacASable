# Automation priority: null
# Test case importance: Very high
# language: en
Feature: Vérifier que la machine sert du café

	Scenario Outline: Vérifier que la machine sert du café
		Given la machine est "branchée"
		When je choisi un <type_cafe>
		Then la machine me sert du café <type_cafe>

		@Cappuccino
		Examples:
		| type_cafe |
		| "Cappuccino" |

		@Expresso
		Examples:
		| type_cafe |
		| "Expresso" |

		@Lungo
		Examples:
		| type_cafe |
		| "Lungo" |