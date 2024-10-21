*** Settings ***

Documentation    This file can be used to perform a complete regression testing for the Log In module of LetsPlay.Live

Resource    ../../pageObjects/envVariable-setup-teardown.robot
Resource    ../../pageObjects//globalVariable.robot
Resource    ../../pageObjects/loginPO.robot
Resource    ../../pageObjects/homepagePO.robot

Test Setup    envVariable-setup-teardown.Test_Start
Test Teardown    envVariable-setup-teardown.Test_End

*** Test Cases ***
Verify Login Accessability
    [Documentation]    This test case verifies that the login module can be accessed via Login button
    globalVariable.ImplicitWait
    globalVariable.Clicker    ${homepage_loginButton}

Verify Email Field Labels
    [Documentation]    This test verifies that hidden labels are showing on LPL environments
    globalVariable.ImplicitWait
    globalVariable.Clicker    ${homepage_loginButton}
    globalVariable.ImplicitWait
    globalVariable.Verify_PageContents    ${LoginLabel['disclaimer']} 
    globalVariable.Clicker    ${emailInput}
    globalVariable.Press_Tab
    globalVariable.Verify_PageContents    ${loginHiddenLabels['fieldRequired']}
    globalVariable.Clicker    ${emailInput}
    globalVariable.Typer    ${emailInput}    ${userCreds['invalidUsername']}
    globalVariable.ImplicitWait
    globalVariable.Verify_PageContents    ${loginHiddenLabels['invalidEmail']}
    globalVariable.ClearTextBox    ${emailInput}