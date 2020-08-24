# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
TEST_1
	Given Lion
	When Tigre
	Then je suis un animal de la savane
	And je suis un animal aquatique
	But baleine