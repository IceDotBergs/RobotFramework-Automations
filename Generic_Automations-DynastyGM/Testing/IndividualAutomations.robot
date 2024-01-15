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