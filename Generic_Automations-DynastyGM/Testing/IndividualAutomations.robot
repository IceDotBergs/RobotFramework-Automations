*** Settings ***

Resource    ../Resources/setup.robot
Resource    ../Resources/labels.robot
Resource    ../Resources/environment_url.robot
Resource    ../Resources/static-credentials.robot
Resource    ../../Google_Automation_Practice/Resources/setupTeardown/SetupAndTeardown.robot
Resource    ../Resources/PageObjects.robot

Test Setup    setup.Test_Start
Test Teardown    setup.Test_End
*** Test Cases ***
Verify Login Page Accessability
    [Documentation]    This verifies the accessibility of the login page
    WaitTimer
    Wait Until Element Is Enabled    xpath=//a[contains(text(),'Log in')]