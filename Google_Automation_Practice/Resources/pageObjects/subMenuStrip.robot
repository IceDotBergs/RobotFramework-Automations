*** Settings ***
Documentation    Sub Menu Strip of Google

Library    SeleniumLibrary

*** Variables ***
#Search box variable on landing page
${searchBox_unclicked}    class:a4bIc
${searchBox_clicked}    id:APjFqb

*** Keywords ***
Click Search
    Wait Until Element Is Enabled    class:a4bIc    timeout=60s
    Click Element    ${searchBox_unclicked}

Search an Item
    Wait Until Element Is Enabled    ${searchBox_unclicked}    timeout=60s
    Click Element    ${searchBox_unclicked}
    Input Text    ${searchBox_clicked}    Google
    Press Keys    ${searchBox_clicked}    ENTER