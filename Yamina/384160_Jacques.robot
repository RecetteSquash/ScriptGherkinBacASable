# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_384160_SETUP}	Get Variable Value	${TEST 384160 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_384160_SETUP is not None	${__TEST_384160_SETUP}

Test Teardown
	${__TEST_384160_TEARDOWN}	Get Variable Value	${TEST 384160 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_384160_TEARDOWN is not None	${__TEST_384160_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
Jacques
	[Setup]	Test Setup
	[Teardown]	Test Teardown