*** Settings ***
Library    SeleniumLibrary

***Variables***

*** Keywords ***
Click Login button
    Wait Until Element Is Enabled    xpath=//a[contains(text(),'Log in')]
    Click Link    xpath=//a[contains(text(),'Log in')]

Click Register button
    Wait Until Element Is Enabled    xpath=//a[contains(text(),'Sign up')]
    Click Link    xpath=//a[contains(text(),'Sign up')]

Click RegisterUsername
    Click Element    xpath=//body/app-root[1]/app-log-reg[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[2]/app-submit-form[1]/section[1]/form[1]/div[2]/div[1]/div[1]/mat-form-field[1]/div[1]/div[1]/div[2]

Click RegisterCalendar
    Click Element    xpath=//body/app-root[1]/app-log-reg[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[2]/app-submit-form[1]/section[1]/form[1]/div[2]/div[1]/div[1]/mat-form-field[1]/div[1]/div[1]/div[2]
    Wait Until Element Is Enabled    xpath=//body/app-root[1]/app-log-reg[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[2]/app-submit-form[1]/section[1]/form[1]/div[2]/div[1]/div[1]/mat-form-field[1]/div[1]/div[1]/div[2]
    #Below clicks the first value in the calendar
    Click Element    xpath=//body/app-root[1]/app-log-reg[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[2]/app-submit-form[1]/section[1]/form[1]/div[2]/div[1]/div[1]/mat-form-field[1]/div[1]/div[1]/div[2]

Click RegisterEmail
    Click Element    xpath=//body/app-root[1]/app-log-reg[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[2]/app-submit-form[1]/section[1]/form[1]/div[2]/div[1]/div[1]/mat-form-field[1]/div[1]/div[1]/div[2]

Click RegisterPassword
    Click Element    xpath=//body/app-root[1]/app-log-reg[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[2]/app-submit-form[1]/section[1]/form[1]/div[2]/div[1]/div[1]/mat-form-field[1]/div[1]/div[1]/div[2]

Click RegisterPasswordMasking
    Click Element    xpath=//body/app-root[1]/app-log-reg[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[2]/app-submit-form[1]/section[1]/form[1]/div[2]/div[1]/div[1]/mat-form-field[1]/div[1]/div[1]/div[2]

Click RegisterTnC
    Click Element    xpath=#mat-mdc-checkbox-1-input

Click RegisterAgeVerification
    Click Element    xpath=#mat-mdc-checkbox-2-input

Check Register Button State 
    Element Should Be Enabled    xpath=//body/app-root[1]/app-log-reg[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[2]/app-submit-form[1]/section[1]/form[1]/div[9]/button[1]

Check AlreadyRegistered Hyperlink
    Click Element    xpath=//a[contains(text(),'Already registered? Log in')]
