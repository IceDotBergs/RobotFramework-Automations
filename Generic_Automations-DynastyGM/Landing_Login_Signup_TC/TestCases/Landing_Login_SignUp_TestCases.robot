*** Settings ***

Resource    ../../Resources/setup.robot
Resource    ../../Resources/labels.robot
Resource    ../../Resources/environment_url.robot
Resource    ../../Resources/static-credentials.robot

*** Variables ***


*** Test Cases ***
Verify Landing Page Accessability
    [Documentation]    This verifies the accessibility of the landing page
    WaitTimer


*** Keywords ***