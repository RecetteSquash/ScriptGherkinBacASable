# Automation priority: 156
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_384148_SETUP}	Get Variable Value	${TEST 384148 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_384148_SETUP is not None	${__TEST_384148_SETUP}

Test Teardown
	${__TEST_384148_TEARDOWN}	Get Variable Value	${TEST 384148 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_384148_TEARDOWN is not None	${__TEST_384148_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BD
	[Setup]	Test Setup
	[Teardown]	Test Teardown