# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
TEST_2
	When éléphant
	Given Hippo
	Then Girafe
	And Zébre