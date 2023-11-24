*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
#======Aguments Demo 1==========
Test using Argument
    Demo Argument    username    password


#======Aguments Demo 2==========
Login Testing
    Login    admin    pass@123
#Same shows that arguments passes 2 values on to the uname and pword scalar variables

*** Keywords ***
#======Aguments Demo 1==========
Demo Argument
    [Arguments]    ${arg1}    ${arg2}
    Log    ${arg1}
    Log    ${arg2}
#Arguments can be used for scenarios such as login where you will provide a valid and invalid accounts
#=========================


#======Aguments Demo 2==========
#Demo shows how to use arguments to accept username and password allowing the 2 values to be dynamic
Login
    [Arguments]    ${username}    ${password}
    Input Text    class:uname    ${username}
    Input Password    class:pword     ${password}