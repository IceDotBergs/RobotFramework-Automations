*** Settings ***
Documentation    Google Automation Setup and Teardown

Library    SeleniumLibrary

Resource    ../urls/url.robot

*** Keywords ***
StartBrowser
    Open Browser    ${url_}    chrome
    Maximize Browser Window

CloseBrowser
    Close All Browsers    