# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_24169_SETUP}	Get Variable Value	${TEST 24169 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_24169_SETUP is not None	${__TEST_24169_SETUP}

Test Teardown
	${__TEST_24169_TEARDOWN}	Get Variable Value	${TEST 24169 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_24169_TEARDOWN is not None	${__TEST_24169_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDD FR4
	[Setup]	Test Setup

	Given je rédige un CT

	[Teardown]	Test Teardown