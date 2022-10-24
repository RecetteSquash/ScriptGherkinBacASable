# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_24143_SETUP}	Get Variable Value	${TEST 24143 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_24143_SETUP is not None	${__TEST_24143_SETUP}

Test Teardown
	${__TEST_24143_TEARDOWN}	Get Variable Value	${TEST 24143 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_24143_TEARDOWN is not None	${__TEST_24143_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDD RF2
	[Setup]	Test Setup

	Given je rédige un CT

	[Teardown]	Test Teardown