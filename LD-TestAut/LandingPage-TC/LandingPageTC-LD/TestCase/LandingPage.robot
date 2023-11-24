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
    centerTiles.Click TournamentTile
    menuStrip.Click home
    centerTiles.Click WatchTile
    menuStrip.Click home
    centerTiles.Click ShopTile
    menuStrip.Click home
    centerTiles.Click Leaderboard
    menuStrip.Click home
     
*** Keywords ***

#current tutorial
#Robot Framework Tutorial #21 - Refactor Selenium Webelement Locators -URL: https://www.youtube.com/watch?v=Uwxnnbdbyxc&list=PLL34mf651faORDOyJrk0E6k9FM-wKgfPV&index=21

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