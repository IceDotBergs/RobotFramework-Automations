*** Settings ***

Resource    ../../Resources/setup.robot
Resource    ../../Resources/labels.robot
Resource    ../../Resources/environment_url.robot
Resource    ../../Resources/static-credentials.robot
Resource    ../../Resources/PageObjects.robot


Test Setup    setup.Test_Start
Test Teardown    setup.Test_End
*** Variables ***


*** Test Cases ***
Verify Landing Page Accessability
    [Documentation]    This verifies the accessibility of the landing page
    #This section only checks the accessibility of the website. No further actions needed on this test case.
    setup.WaitTimer

Verify Login Page Accessability
    [Documentation]    This verifies the accessibility of the login page
    setup.WaitTimer
    PageObjects.Clicker    ${loginButton}
    setup.WaitTimer

Perform Invalid credentials Login
    [Documentation]    This is to verify that a user cannot login with invalid credentials
    Clicker    ${loginButton}
    WaitTimer
    Typer    ${emailField}    ${active_credentials['validUsername']}
    Typer    ${passwordField}    ${active_credentials['invalidPassword']}
    Press Tab
    Clicker    ${submitButton}
    Verify PageContents    ${loginLabels['accountMismatch']}
    WaitTimer

Perform Valid Credentials Login
    [Documentation]    This is to verify that a user is able to login with a valid credential
    Clicker    ${loginButton}
    WaitTimer
    Typer    ${emailField}    ${active_credentials['validUsername']}
    Typer    ${passwordField}    ${active_credentials['validPassword']}
    Press Tab
    Clicker    ${submitButton}
    WaitTimer
    Verify PageNotContains    ${submitButton}
    WaitTimer

Verify Hyperlinks In Login Page
    [Documentation]    This is to verify that hyperlinks are working in the login page
    Clicker    ${loginButton}
    WaitTimer
    Clicker    ${forgotPasswordHyperlink}
    Verify PageContents    ${forgotPasswordContent}
    WaitTimer
    Clicker    ${backToLogin}
    Clicker    ${dontHaveAccount}
    Verify PageContents    ${registerWithLPL}
    WaitTimer

Verify RegistrationPage Accessability
    [Documentation]    This verifies the accesibility of the registration page
    setup.WaitTimer
    PageObjects.Clicker    ${registerButton}
    setup.WaitTimer

Username field validation
    [Documentation]    This test case verifies that the username field validations are properly working
    setup.WaitTimer
    PageObjects.Clicker    ${registerButton}
    setup.WaitTimer
    PageObjects.Clicker    ${usernameField}
    PageObjects.Typer    ${usernameField}    ${uname_values['belowMin']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${username_labels}[1]
    setup.WaitTimer
    PageObjects.ClearTextBox    ${usernameField}
    setup.WaitTimer
    PageObjects.Typer    ${usernameField}    ${uname_values['alreadyExist']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${username_labels}[4]
    setup.WaitTimer
    PageObjects.ClearTextBox    ${usernameField}
    setup.WaitTimer
    PageObjects.Typer    ${usernameField}    ${uname_values['invalid']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${username_labels}[2]
    setup.WaitTimer
    PageObjects.ClearTextBox    ${usernameField}
    setup.WaitTimer
    PageObjects.Typer    ${usernameField}    ${uname_values['valid']}
    PageObjects.Press Tab
    setup.WaitTimer

DOB Calendar
    PageObjects.Clicker    ${calenderFirstElement}

Email field validation
    [Documentation]    This test case verifies that the email field validations are properly working
    setup.WaitTimer
    PageObjects.Clicker    ${registerButton}
    setup.WaitTimer
    PageObjects.Clicker    ${emailField}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${email['required']}
    setup.WaitTimer
    PageObjects.Typer    ${emailField}    ${email_values['invalidemail1']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${email['invalid']}
    setup.WaitTimer
    PageObjects.ClearTextBox    ${emailField}
    PageObjects.Typer    ${emailField}    ${email_values['invalidemail2']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${email['invalid']}
    setup.WaitTimer
    PageObjects.ClearTextBox    ${emailField}
    PageObjects.Typer    ${emailField}    ${email_values['invalidemail3']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${email['invalid']}
    setup.WaitTimer
    PageObjects.ClearTextBox    ${emailField}
    PageObjects.Typer    ${emailField}    ${email_values['validemail']}

Password field validation
    [Documentation]    This test case verifies that the password field validations are properly working
    setup.WaitTimer
    PageObjects.Clicker    ${registerButton}
    setup.WaitTimer
    PageObjects.Clicker    ${passwordField}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${password['required']}
    setup.WaitTimer
    PageObjects.Typer    ${passwordField}    ${pword_values['invalid1']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${password['uppercase']}
    setup.WaitTimer
    PageObjects.ClearTextBox    ${passwordField}
    PageObjects.Typer    ${passwordField}    ${pword_values['invalid2']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${password['specialchar']}
    setup.WaitTimer
    PageObjects.ClearTextBox    ${passwordField}
    PageObjects.Typer    ${passwordField}    ${pword_values['invalid3']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${password['uppercase']}
    setup.WaitTimer
    PageObjects.ClearTextBox    ${passwordField}
    PageObjects.Typer    ${passwordField}    ${pword_values['invalid4']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${password['length']}
    setup.WaitTimer
    PageObjects.ClearTextBox    ${passwordField}
    PageObjects.Typer    ${passwordField}    ${pword_values['valid']}
    setup.WaitTimer
    PageObjects.Clicker    ${passwordMasking}
    setup.WaitTimer
    PageObjects.Clicker    ${passwordMasking}

TnC checkbox validation
    [Documentation]    This test case verifies that the tnc checkbox is properly working
    setup.WaitTimer
    PageObjects.Clicker    ${registerButton}
    setup.WaitTimer
    PageObjects.Clicker    ${termsCondition}
    #Element Contains    ${termsConditionChecked}
    ElementChecker    ${temsConditionID}    ${termsConditionChecked2}

Age checkbox validation
    [Documentation]    This test case verifies that the age checkbox is properly working
    setup.WaitTimer
    PageObjects.Clicker    ${registerButton}
    setup.WaitTimer
    PageObjects.Clicker    ${ageVerification}
    ElementChecker    ${ageVerificationID}    ${ageVerificationChecked}

Hyperlink Redirections
    [Documentation]    This test case verifies that the Terms of Use, Privacy Policy and Already have an account redirects to correct pages
    setup.WaitTimer
    PageObjects.Clicker    ${registerButton}
    setup.WaitTimer
    PageObjects.Clicker    ${termsOfUseHyperlink}
    setup.WaitTimer
    Verify PageContents    ${termsOfUsePageContent}
    setup.WaitTimer
    PageObjects.Clicker    ${registerButton}
    setup.WaitTimer
    PageObjects.Clicker    ${privacyPolicy}
    Verify PageContents    ${termsOfUsePageContent}
    setup.WaitTimer
    PageObjects.Clicker    ${registerButton}
    setup.WaitTimer
    PageObjects.Clicker    ${alreadyRegistered}
    Verify PageContents    ${loginPageContent}
    setup.WaitTimer

Perform Registration Procedure
    [Documentation]    This test case performs the whole registration procedure and validation in a consolidated manner

    #This Section verifies the Username field validations
    setup.WaitTimer
    PageObjects.Clicker    ${registerButton}
    setup.WaitTimer
    PageObjects.Clicker    ${usernameField}
    PageObjects.Typer    ${usernameField}    ${uname_values['belowMin']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${username_labels}[1]
    setup.WaitTimer
    PageObjects.ClearTextBox    ${usernameField}
    setup.WaitTimer
    PageObjects.Typer    ${usernameField}    ${uname_values['alreadyExist']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${username_labels}[4]
    setup.WaitTimer
    PageObjects.ClearTextBox    ${usernameField}
    setup.WaitTimer
    PageObjects.Typer    ${usernameField}    ${uname_values['invalid']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${username_labels}[2]
    setup.WaitTimer
    PageObjects.ClearTextBox    ${usernameField}
    setup.WaitTimer
    PageObjects.Typer    ${usernameField}    ${uname_values['valid']}
    PageObjects.Press Tab
    setup.WaitTimer
    
    #This sections is for the calendar
    PageObjects.Clicker    ${calenderFirstElement}

    #This is for the email
    PageObjects.Clicker    ${emailField}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${email['required']}
    setup.WaitTimer
    PageObjects.Typer    ${emailField}    ${email_values['invalidemail1']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${email['invalid']}
    setup.WaitTimer
    PageObjects.ClearTextBox    ${emailField}
    PageObjects.Typer    ${emailField}    ${email_values['invalidemail2']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${email['invalid']}
    setup.WaitTimer
    PageObjects.ClearTextBox    ${emailField}
    PageObjects.Typer    ${emailField}    ${email_values['invalidemail3']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${email['invalid']}
    setup.WaitTimer
    PageObjects.ClearTextBox    ${emailField}
    PageObjects.Typer    ${emailField}    ${email_values['validemail']}

    #This is for the Password field
    PageObjects.Clicker    ${passwordField}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${password['required']}
    setup.WaitTimer
    PageObjects.Typer    ${passwordField}    ${pword_values['invalid1']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${password['uppercase']}
    setup.WaitTimer
    PageObjects.ClearTextBox    ${passwordField}
    PageObjects.Typer    ${passwordField}    ${pword_values['invalid2']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${password['specialchar']}
    setup.WaitTimer
    PageObjects.ClearTextBox    ${passwordField}
    PageObjects.Typer    ${passwordField}    ${pword_values['invalid3']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${password['uppercase']}
    setup.WaitTimer
    PageObjects.ClearTextBox    ${passwordField}
    PageObjects.Typer    ${passwordField}    ${pword_values['invalid4']}
    PageObjects.Press Tab
    PageObjects.Verify PageContents    ${password['length']}
    setup.WaitTimer
    PageObjects.ClearTextBox    ${passwordField}
    PageObjects.Typer    ${passwordField}    ${pword_values['valid']}
    setup.WaitTimer
    PageObjects.Clicker    ${passwordMasking}
    setup.WaitTimer
    PageObjects.Clicker    ${passwordMasking}

    #This is for the Captcha - Disabling Captcha as I cannot bypass this thing
    #Clicker    ${passwordField}
    #Press Tab
    #Press Space
    #WaitTimer

    #TandC and Age Verification
    PageObjects.Clicker    ${termsCondition}
    PageObjects.Clicker    ${ageVerification}

    #Check Create My Account should ENABLE - Disabling Create Account button state verification as I cannot bypass the captcha
    #WaitTimer
    #Press Tab
    #Check Register Button State
    
    #Hyperlinks
    PageObjects.Clicker    ${termsOfUseHyperlink}
    Verify PageContents    ${termsOfUsePageContent}
    setup.WaitTimer
    PageObjects.Clicker    ${registerButton}
    setup.WaitTimer
    PageObjects.Clicker    ${privacyPolicy}
    Verify PageContents    ${termsOfUsePageContent}
    setup.WaitTimer
    PageObjects.Clicker    ${registerButton}
    setup.WaitTimer
    PageObjects.Clicker    ${alreadyRegistered}
    Verify PageContents    ${loginPageContent}
    setup.WaitTimer


*** Keywords ***