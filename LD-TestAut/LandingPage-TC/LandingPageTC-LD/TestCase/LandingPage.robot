*** Settings ***
Documentation    Landing Page Automation

# ../ represent 1 folder up
Resource    ../../LandingPageTC-LD/Resources/CommonFunctionalities.robot
Resource    ../../LandingPageTC-LD/Resources/PageObjects/menuStrip.robot
Resource    ../../LandingPageTC-LD/Resources/PageObjects/centerTiles.robot

Test Setup    CommonFunctionalities.StartTest
Library    Screenshot
Test Teardown    CommonFunctionalities.EndTest
*** Variables ***

*** Test Cases ***

#Tournament/Watch/Shop/Leaderboards
Verify Four Center Tiles
    [Documentation]    This test case will verify the functionality of the 4 center Tiles
    [Tags]    functional

    CommonFunctionalities.PerformLoginProcess
    Sleep    3s
    centerTiles.Click TournamentTile
    Sleep    3s
    menuStrip.Click home
    Sleep    3s
    centerTiles.Click WatchTile
    Sleep    3s
    menuStrip.Click home
    Sleep    3s
    centerTiles.Click ShopTile
    Sleep    3s
    menuStrip.Click home
    Sleep    3s
    centerTiles.Click Leaderboard
    Sleep    3s
    menuStrip.Click home
     
*** Keywords ***

#current tutorial
#Robot Framework Tutorial #10 - How to Create User Defined Keywords -Done
#python -m robot --outputdir C:\Users\Dynas\OneDrive\Desktop\LD-TestAut\LandingPage-TC\LandingPageTC-LD\TestCase\LandingPageLogs LandingPage.robot

*** Comments ***
Verify home page is properly displayed
    [Documentation]    This test case verifies the functionality of the homepage-login
    [Tags]    functional

    CommonFunctionalities.PerformLoginProcess
    Sleep    5s
    Take Screenshot    ${TEST_NAME}_homepageImage.png
    Sleep    5s

python -m robot --outputdir C:\Users\Dynas\OneDrive\Desktop\LD-TestAut\LandingPage-TC\LandingPageTC-LD\TestCase\LandingPageLogs LandingPage.robot        