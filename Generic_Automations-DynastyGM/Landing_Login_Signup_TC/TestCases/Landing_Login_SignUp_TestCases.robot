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

Verify RegistrationPage Accessability
    [Documentation]    This verifies the accesibility of the registration page
    setup.WaitTimer
    PageObjects.Clicker    ${registerButton}
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