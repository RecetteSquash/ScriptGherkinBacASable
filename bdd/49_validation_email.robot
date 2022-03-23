# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource
Library		squash_tf.TFParamService

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_49_SETUP}	Get Variable Value	${TEST 49 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_49_SETUP is not None	${__TEST_49_SETUP}

Test Teardown
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	${__TEST_49_TEARDOWN}	Get Variable Value	${TEST 49 TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}
	Run Keyword If	$__TEST_49_TEARDOWN is not None	${__TEST_49_TEARDOWN}

*** Test Cases ***
validation email
	${email_adess} =	Get Test Param	DS_email_adess
	${error_message} =	Get Test Param	DS_error_message

	[Setup]	Test Setup

	Given user is on login page
	When User creates account with ${email_adess}
	Then ${error_message} is displayed

	[Teardown]	Test Teardown