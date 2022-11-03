# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_384714_SETUP}	Get Variable Value	${TEST 384714 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_384714_SETUP is not None	${__TEST_384714_SETUP}

Test Teardown
	${__TEST_384714_TEARDOWN}	Get Variable Value	${TEST 384714 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_384714_TEARDOWN is not None	${__TEST_384714_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDD Waj 2
	[Setup]	Test Setup
	[Teardown]	Test Teardown