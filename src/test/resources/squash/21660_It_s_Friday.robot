# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
It's Friday
	Given today is Sunday
	Given I ask whether it's Friday yet
	Given I should be told "Nope"