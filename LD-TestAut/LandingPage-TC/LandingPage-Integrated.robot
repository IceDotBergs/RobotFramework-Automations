*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***


*** Keywords ***
#This is where you can add additional keywords that can be used for the test cases

#Responsible for scrolling the screen
#Use -percent (Negative percent) to scroll the screen up
ScrollScreen
    [Arguments]    ${percentage}
    ${scrollHeight} =    Execute Javascript    return (document.body.scrollHeight * ${percentage}) / 100
    Execute Javascript    window.scrollTo(0, ${scrollHeight})