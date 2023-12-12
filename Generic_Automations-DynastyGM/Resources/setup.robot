*** Settings ***

Documentation    Provides all setup resources
Library    SeleniumLibrary
Resource    environment_url.robot

*** Variables ***

*** Keywords ***
Test_Start
    Open Browser    ${browser.{env}}
    Maximize Browser Window

Test_End
    Close All Browsers