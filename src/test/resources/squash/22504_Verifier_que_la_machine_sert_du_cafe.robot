# Automation priority: null
# Test case importance: Very high
*** Settings ***
Resource	squash_resources.resource
Library		squash_tf.TFParamService

*** Test Cases ***
Vérifier que la machine sert du café
	${type_cafe} =	Get Param	type_cafe
	${type_cafe} =	Get Param	type_cafe

	Given la machine est "branchée"
	When je choisi un ${type_cafe}
	Then la machine me sert du café ${type_cafe}