# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_384125_SETUP}	Get Variable Value	${TEST 384125 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_384125_SETUP is not None	${__TEST_384125_SETUP}

Test Teardown
	${__TEST_384125_TEARDOWN}	Get Variable Value	${TEST 384125 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_384125_TEARDOWN is not None	${__TEST_384125_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDD
	[Setup]	Test Setup
	[Teardown]	Test Teardown