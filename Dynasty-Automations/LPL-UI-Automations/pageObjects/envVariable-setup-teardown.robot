#LPL Test Setup and Teardown

*** Settings ***
Documentation  This document provides the complete environment setup along with the setup and teardown of each test cases for the LPL environment
Library    SeleniumLibrary

*** Variables ***

#browsers can be also changed to [firefox] [internetexplorer] but requires drivers to be installed
${browser}    chrome

#can be changed to prod but points to dev by default
${env}    dev
&{url}    dev=https://lpl.dynasty-dev.com/    prod=https://gg.letsplay.live/home

*** Keywords ***
#To be always called when conducting test
Test_Start
    Open Browser    ${url.${env}}    ${browser}
    Maximize Browser Window

Test_End
    Close All Browsers