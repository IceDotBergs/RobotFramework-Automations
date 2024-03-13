*** Settings ***
Library    SeleniumLibrary

Test Setup    TestStart
Test Teardown    

*** Variables ***
&{tournamentAutoCreds}    taEmail=tournamentautomationbot@mailinator.com    taPass=tournamentautomations@Dynasty2024

${urls}    LDdev=https://dev.lightningdragon.gg/home    

#Select Tournament Type
${QuickTournament}    xpath=//h2[contains(text(),'Quick Tournament')]
${AdvanceTournament}    xpath=//h2[contains(text(),'Advanced Tournament')]


*** Keywords ***
TestStart
    Open Browser    ${urls}    chrome
    Click Element    xpath=//a[contains(text(), " Log in ")]
    Input Text    xpath=//input[contains(@name, "email")]    ${tournamentAutoCreds}


*** Test Cases ***

