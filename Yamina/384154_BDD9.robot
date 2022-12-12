# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_384154_SETUP}	Get Variable Value	${TEST 384154 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_384154_SETUP is not None	${__TEST_384154_SETUP}

Test Teardown
	${__TEST_384154_TEARDOWN}	Get Variable Value	${TEST 384154 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_384154_TEARDOWN is not None	${__TEST_384154_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDD9
	[Setup]	Test Setup
	[Teardown]	Test Teardown