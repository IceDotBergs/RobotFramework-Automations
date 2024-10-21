*** Settings ***
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

#mimics the type function for a more human readable script
Typer
    [Arguments]    ${targetElement}    ${typedWord}
    Input Text    ${targetElement}     ${typedWord}

#mimics the click function for a more human readable script
Clicker
    [Arguments]    ${clickElement}
    Click Element    ${clickElement}

ClearTextBox
    [Arguments]    ${clearElement}
    Clear Element Text    ${clearElement}

Verify_PageContents
    [Arguments]    ${pageShouldContain}
    Page Should Contain    ${pageShouldContain} 

Verify_PageNotContains
    [Arguments]    ${pageShouldNotContain}
    Page Should Not Contain Button    ${pageShouldNotContain}

Element_Contains
    [Arguments]    ${elementContains}
    Wait Until Page Contains Element    ${elementContains}

Element_Not_Contains
    [Arguments]    ${target}    ${elementNotContain}
    Element Should Not Contain    ${target}    ${elementNotContain}

Press_Tab
    Press Keys    None    TAB

ElementChecker
    [Arguments]    ${idOfTag}    ${classToCheck}
    ${classAttribut}=    Get Element Attribute    ${idOfTag}    class
    Should Contain    ${classAttribut}    ${classToCheck}
