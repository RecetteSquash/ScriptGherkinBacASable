# Automation priority: 156
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_384189_SETUP}	Get Variable Value	${TEST 384189 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_384189_SETUP is not None	${__TEST_384189_SETUP}

Test Teardown
	${__TEST_384189_TEARDOWN}	Get Variable Value	${TEST 384189 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_384189_TEARDOWN is not None	${__TEST_384189_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
mise à jour
	[Setup]	Test Setup
	[Teardown]	Test Teardown