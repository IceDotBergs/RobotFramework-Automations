*** Settings ***

Documentation    This file will hold the test cases for login

Resource    ../../../LD/Resources/pageObjects/loginPO.robot
Resource    ../../../LD/Resources/globalVariables.robot
Resource    ../../../LD/Resources/testSetup.robot

Test Setup    testSetup.Test_Start
Test Teardown    testSetup.Test_End

*** Test Cases ***

Verify Landing Page Accessability
    [Documentation]    This verifies the accessibility of the landing page
    #This section only checks the accessibility of the website. No further actions needed on this test case.
    globalVariables.ImplicitWait

Verify Login Page Accessability
    [Documentation]    This verifies the accessibility of the login page
    globalVariables.ImplicitWait
    globalVariables.Clicker    ${loginButton}
    globalVariables.ImplicitWait

Valid email invalid pass
    [Documentation]    This verifies that a user with valid email but invalid pass cannot login to the page
    globalVariables.ExplicitWait    ${loginButton}
    globalVariables.Clicker    ${loginButton}
    globalVariables.ImplicitWait
    globalVariables.Typer    ${emailField}    ${active_credentials['validUsername']}
    globalVariables.Typer    ${passwordField}    ${active_credentials['invalidPassword']}
    globalVariables.ExplicitWait    ${loginButton2}
    globalVariables.Clicker    ${loginButton2}
    globalVariables.Verify PageContents    ${loginLabels['accountMismatch']}

Invalid email valid pass
    [Documentation]    This verifies that a user with invalid email but valid pass cannot login to the page
    globalVariables.ExplicitWait    ${loginButton}
    globalVariables.Clicker    ${loginButton}
    globalVariables.ImplicitWait
    globalVariables.Typer    ${emailField}    ${active_credentials['invalidUsername']}
    globalVariables.Typer    ${passwordField}    ${active_credentials['validPassword']}
    globalVariables.ExplicitWait    ${loginButton2}
    globalVariables.Clicker    ${loginButton2}
    globalVariables.Verify PageContents    ${loginLabels['accountMismatch']}

Invalid email invalid pass
    [Documentation]    This verifies that a user with invalid email and pass cannot login to the page
    globalVariables.ExplicitWait    ${loginButton}
    globalVariables.Clicker    ${loginButton}
    globalVariables.ImplicitWait
    globalVariables.Typer    ${emailField}    ${active_credentials['invalidUsername']}
    globalVariables.Typer    ${passwordField}    ${active_credentials['invalidPassword']}
    globalVariables.ExplicitWait    ${loginButton2}
    globalVariables.Clicker    ${loginButton2}
    globalVariables.Verify PageContents    ${loginLabels['accountMismatch']}

valid email and pass
    [Documentation]    This verifies that a user with invalid email and pass cannot login to the page
    globalVariables.ExplicitWait    ${loginButton}
    globalVariables.Clicker    ${loginButton}
    globalVariables.ImplicitWait
    globalVariables.Typer    ${emailField}    ${active_credentials['validUsername']}
    globalVariables.Typer    ${passwordField}    ${active_credentials['validPassword']}
    globalVariables.ExplicitWait    ${loginButton2}
    globalVariables.Clicker    ${loginButton2}
    globalVariables.Verify PageNotContains    ${loginLabels['accountMismatch']}

verify rememberme tickbox
    [Documentation]    This verifies that the remember me checkbox can be tick/untick
    globalVariables.ExplicitWait    ${loginButton}
    globalVariables.Clicker    ${loginButton}
    globalVariables.ImplicitWait
    globalVariables.Clicker    ${rememberMe}
    globalVariables.ExplicitWait    ${rememberMe-checked}
    globalVariables.Element Contains    ${rememberMe-checked}
    globalVariables.Clicker    ${rememberMe}
    globalVariables.Verify PageNotContains    ${rememberMe-checked}

verify forgot password redirection
    [Documentation]    This verifies the redirection of forgot password hyperlink
    globalVariables.ExplicitWait    ${loginButton}
    globalVariables.Clicker    ${loginButton}
    globalVariables.ImplicitWait
    globalVariables.Clicker    ${forgotPassword}
    globalVariables.Verify PageContents    ${forgotPasswordTitleLabel}

dont have account redirection
    [Documentation]    This verifies the redirection of the dont have an account yet hyperlink
    globalVariables.ExplicitWait    ${loginButton}
    globalVariables.Clicker    ${loginButton}
    globalVariables.ImplicitWait
    globalVariables.Clicker    ${dontHaveAccount}
    globalVariables.Verify PageContents    ${registerTitleLabel}

forgot password invalid email
    [Documentation]    This verifies that an invalid email will not send an OTP
    globalVariables.ExplicitWait    ${loginButton}
    globalVariables.Clicker    ${loginButton}
    globalVariables.ImplicitWait
    globalVariables.Clicker    ${forgotPassword}
    globalVariables.Verify PageContents    ${forgotPasswordTitleLabel}
    globalVariables.Typer    ${emailField}    ${active_credentials['invalidUsername']}
    globalVariables.ExplicitWait    ${nextButton}
    globalVariables.Clicker    ${nextButton}
    globalVariables.ImplicitWait
    globalVariables.Verify PageContents    ${invalidEmail}

forgot password valid email
    [Documentation]    This verifies that a valid email will receive an OTP, manual typing of OTP required
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
    globalVariables.ExplicitWait-longer    ${verifyButtonEnabled}

forgot password invalid otp
    [Documentation]    This verifies that an incorrect OTP will prompt an error to the page
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
    globalVariables.ExplicitWait-longer    ${verifyButtonEnabled}
    globalVariables.Clicker    ${verifyButtonEnabled}
    globalVariables.ImplicitWait
    globalVariables.Verify PageContents    ${incorrectOTPlabel}

forgot password valid otp
    [Documentation]    This verifies that the correct otp entered will show the change password hidden screen
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
    globalVariables.ExplicitWait-longer    ${verifyButtonEnabled}
    globalVariables.Clicker    ${verifyButtonEnabled}
    globalVariables.ImplicitWait
    globalVariables.Verify PageContents    ${correctOTPchangePassEnabled}

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


otp resend
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
    globalVariables.ImplicitWait
    globalVariables.Verify PageContents    ${correctOTPchangePassEnabled}
