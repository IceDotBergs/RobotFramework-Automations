*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${login_email}      testa@mailinator.com
${login_password}      Pass@123

*** Keywords ***
StartTest
    Open Browser    https://dev.lightningdragongames.gg/home    chrome
    Maximize Browser Window
    Sleep    2s

EndTest
    Close Browser

PerformLoginProcess
    
    Click Element    css:a.button-secondary
    Wait Until Element Is Enabled    name:email
    Input Text    name:email    ${login_email}
    Input Password    name:password    ${login_password}
    Click Element    css:button[type="submit"]

