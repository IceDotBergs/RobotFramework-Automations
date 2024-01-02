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
    PageObjects.Click Login button
    setup.WaitTimer


*** Keywords ***