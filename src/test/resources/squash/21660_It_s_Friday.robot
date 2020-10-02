# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
It's Friday
	Given Today is Sunday
	When I Ask wether it's Friday yet
	Then I should be told "Nope"