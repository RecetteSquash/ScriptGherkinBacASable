# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
TEST_3
	And coucou
	When bonjour, hello
	Then au revoir
	But byebye