*** Settings ***

Documentation    This is a test file for individual testing of test cases before merging with the actual test file.
Library    SeleniumLibrary
Library    DataDriver

Resource    ../../LD/Resources/globalVariables.robot
Resource    ../../LD/Resources/testSetup.robot
Resource    ../../LD/Resources/pageObjects/loginPO.robot

Test Setup    testSetup.Test_Start
Test Teardown    testSetup.Test_End

*** Variables ***

*** Keywords ***
#python -m robot --outputdir C:\Users\Dynas\OneDrive\Documents\GitHub\RobotFramework-Automations\DynastyTestAutomations\LD\TS-SoloTestFiles\Logs  SoloTest.robot


##Login test case coverage- 1. Valid email, invalid pass 2. invalid email, valid pass 3. invalid email and pass 4. valid email and pass
*** Test Cases ***
otp expire
    [Documentation]    This verifies that an incorrect OTP will prompt an error to the page, user should type in the correct OTP
    globalVariables.ExplicitWait    ${loginButton}
    globalVariables.Clicker    ${loginButton}
    globalVariables.ImplicitWait
    globalVariables.Clicker    ${forgotPassword}
    globalVariables.Verify PageContents    ${forgotPasswordTitleLabel}
    globalVariables.Typer    ${emailField}    ${active_credentials['validUsername']}
    globalVariables.ExplicitWait    ${nextButton}
    globalVariables.Clicker    ${nextButton}
    globalVariables.ImplicitWait
    globalVariables.Verify PageContents    ${forgotpasswordSuccess}
    loginPO.implicitWait-OTPexpire
    globalVariables.Clicker    ${resendOTP}
    globalVariables.ExplicitWait-longer    ${verifyButtonEnabled}
    globalVariables.Verify PageContents    ${correctOTPchangePassEnabled}
