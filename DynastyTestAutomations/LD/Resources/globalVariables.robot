*** Settings ***

Documentation    This file will contain all variables that can be referenced all throughout the tests
Library    SeleniumLibrary

*** Keywords ***
ImplicitWait
    Sleep    3s

ExplicitWait
    [Arguments]    ${elementToWait}
    Wait Until Element Is Enabled    ${elementToWait}    

ExplicitWait-longer
    [Arguments]    ${elementToWait}
    Wait Until Element Is Enabled    ${elementToWait}    30s

Typer
    [Arguments]    ${targetElement}    ${typedWord}
    Input Text    ${targetElement}     ${typedWord}

Clicker
    [Arguments]    ${clickElement}
    Click Element    ${clickElement}

ClearTextBox
    [Arguments]    ${clearElement}
    Clear Element Text    ${clearElement}

Verify PageContents
    [Arguments]    ${pageShouldContain}
    Page Should Contain    ${pageShouldContain} 

Verify PageNotContains
    [Arguments]    ${pageShouldNotContain}
    Page Should Not Contain Button    ${pageShouldNotContain}

Element Contains
    [Arguments]    ${elementContains}
    Wait Until Page Contains Element    ${elementContains}

Element Not Contains
    [Arguments]    ${target}    ${elementNotContain}
    Element Should Not Contain    ${target}    ${elementNotContain}

Press Tab
    Press Keys    None    TAB

ElementChecker
    [Arguments]    ${idOfTag}    ${classToCheck}
    ${classAttribut}=    Get Element Attribute    ${idOfTag}    class
    Should Contain    ${classAttribut}    ${classToCheck}

    