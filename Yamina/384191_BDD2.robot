# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_384191_SETUP}	Get Variable Value	${TEST 384191 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_384191_SETUP is not None	${__TEST_384191_SETUP}

Test Teardown
	${__TEST_384191_TEARDOWN}	Get Variable Value	${TEST 384191 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_384191_TEARDOWN is not None	${__TEST_384191_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDD2
	[Setup]	Test Setup
	[Teardown]	Test Teardown