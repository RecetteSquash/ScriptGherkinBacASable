# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_24168_SETUP}	Get Variable Value	${TEST 24168 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_24168_SETUP is not None	${__TEST_24168_SETUP}

Test Teardown
	${__TEST_24168_TEARDOWN}	Get Variable Value	${TEST 24168 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_24168_TEARDOWN is not None	${__TEST_24168_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDD FR3
	[Setup]	Test Setup

	Given je rédige un CT

	[Teardown]	Test Teardown