*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Practice Formal Test Case
    [Documentation]    Simple Test Case
    [Tags]    tag name

    Open Browser    http://www.google.com    chrome
    Close Browser

*** Keywords ***