# Automation priority: 123456789
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_384151_SETUP}	Get Variable Value	${TEST 384151 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_384151_SETUP is not None	${__TEST_384151_SETUP}

Test Teardown
	${__TEST_384151_TEARDOWN}	Get Variable Value	${TEST 384151 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_384151_TEARDOWN is not None	${__TEST_384151_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
MISE A jour
	[Setup]	Test Setup
	[Teardown]	Test Teardown