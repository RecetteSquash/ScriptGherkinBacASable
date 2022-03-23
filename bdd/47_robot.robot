# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_47_SETUP}	Get Variable Value	${TEST 47 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_47_SETUP is not None	${__TEST_47_SETUP}

Test Teardown
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	${__TEST_47_TEARDOWN}	Get Variable Value	${TEST 47 TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}
	Run Keyword If	$__TEST_47_TEARDOWN is not None	${__TEST_47_TEARDOWN}

*** Test Cases ***
robot
	[Setup]	Test Setup

	Given Pas sans param
	Given pas suivant sans param

	[Teardown]	Test Teardown