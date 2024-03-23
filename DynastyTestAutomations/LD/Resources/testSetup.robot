*** Settings ***

Documentation    Provides all test setup resources. This file should contain all initial settings to where to run the test
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome

#evn defaults to DEV
${env}    prod

#url for different env
&{url}    dev=https://dev.lightningdragon.gg/home    prod=https://lightningdragon.gg/home

*** Keywords ***
Test_Start
    Open Browser    ${url.${env}}    ${browser}
    Maximize Browser Window

Test_End
    Close All Browsers