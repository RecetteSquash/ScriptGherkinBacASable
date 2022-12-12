# Automation priority: 123
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_384146_SETUP}	Get Variable Value	${TEST 384146 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_384146_SETUP is not None	${__TEST_384146_SETUP}

Test Teardown
	${__TEST_384146_TEARDOWN}	Get Variable Value	${TEST 384146 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_384146_TEARDOWN is not None	${__TEST_384146_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDDé
	[Setup]	Test Setup
	[Teardown]	Test Teardown