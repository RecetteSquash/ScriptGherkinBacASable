# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_243_SETUP}	Get Variable Value	${TEST 243 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_243_SETUP is not None	${__TEST_243_SETUP}

Test Teardown
	${__TEST_243_TEARDOWN}	Get Variable Value	${TEST 243 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_243_TEARDOWN is not None	${__TEST_243_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDD
	[Setup]	Test Setup

	Given TEST

	[Teardown]	Test Teardown