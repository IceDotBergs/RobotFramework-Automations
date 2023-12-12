*** Settings ***

Resource    ../Resources/setup.robot
Resource    ../Resources/labels.robot
Resource    ../Resources/environment_url.robot
Resource    ../Resources/static-credentials.robot
Resource    ../../Google_Automation_Practice/Resources/setupTeardown/SetupAndTeardown.robot

Test Setup    setup.Test_Start
Test Teardown    setup.Test_End
*** Test Cases ***
Verify Landing Page Accessability
    [Documentation]    This verifies the accessibility of the landing page
    WaitTimer