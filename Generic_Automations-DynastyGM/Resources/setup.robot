*** Settings ***

Documentation    Provides all setup resources
Library    SeleniumLibrary
Resource    environment_url.robot

*** Variables ***

*** Keywords ***
Test_Start
    Open Browser    ${lpl_url.${env}}    ${browser}
    Maximize Browser Window

Test_End
    Close All Browsers

WaitTimer
    Sleep    3
    