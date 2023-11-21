*** Settings ***

Documentation    Tournament/Watch/Shop/Leaderboard homepage tiles

Resource    ../../../LandingPageTC-LD/Resources/CommonFunctionalities.robot

*** Keywords ***
Click TournamentTile
    
    Wait Until Element Is Enabled    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[1]/div/div[2]    timeout=30s
    Mouse Over    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[1]/div/div[2]
    Click Element    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[1]/div/div[2]

Click WatchTile
    
    Wait Until Element Is Enabled    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[2]/div/div[2]    timeout=30s
    Mouse Over    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[2]/div/div[2]
    Click Element    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[2]/div/div[2]
Click ShopTile

    Wait Until Element Is Enabled    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[3]/div/div[2]    timeout=30s
    Mouse Over    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[3]/div/div[2]
    Click Element    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[3]/div/div[2]

Click Leaderboard

    Wait Until Element Is Enabled    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[4]/div/div[2]    timeout=30s
    Mouse Over    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[4]/div/div[2]
    Click Element    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[4]/div/div[2]
    