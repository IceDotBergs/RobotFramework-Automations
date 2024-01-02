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
Perform Registration Procedure
    [Documentation]    This test case performs the whole registration procedure and validation
    setup.WaitTimer
    PageObjects.Click Login button
    setup.WaitTimer
    PageObjects.Click RegisterUsername
