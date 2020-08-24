# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
TEST_3
	Given coucou
	When bonjour
	Then au revoir
	But byebye