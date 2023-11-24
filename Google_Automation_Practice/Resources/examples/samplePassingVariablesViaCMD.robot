*** Settings ***
Library    SeleniumLibrary

*** Variables ***
&{urlList}    dev=http://dev.website.com    stage=http://stage.website.com    prod=http://website.com
#creates a list of available environments
${url}    dev
#allows the test to be flexible on selecting the environment, defaults to dev if no env is entered
${browser}    chrome

*** Test Cases ***

*** Keywords ***
Start Test Case
    Open Browser    ${urlList.${url}}    ${browser}
    Maximize Browser Window
    Close All Browsers
#test case allows the open browser to change the environment depending on what the cmd will run

#=======On CMD when running the script============
#the below command it will run the test case in stage environment (url:stage) on firefox (browser:firefox)
#since we pass values in command it will run on the set values instead of default
#this is useful for Jenkins or any pipeline

#python -m robot -d results -v url:stage browser:firefox automation.robot
