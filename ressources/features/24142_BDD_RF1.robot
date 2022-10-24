# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_24142_SETUP}	Get Variable Value	${TEST 24142 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_24142_SETUP is not None	${__TEST_24142_SETUP}

Test Teardown
	${__TEST_24142_TEARDOWN}	Get Variable Value	${TEST 24142 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_24142_TEARDOWN is not None	${__TEST_24142_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDD RF1
	[Setup]	Test Setup

	Given je rédige un CT

	[Teardown]	Test Teardown