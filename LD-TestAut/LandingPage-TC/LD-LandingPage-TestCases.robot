*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
#All test cases will run on Dev!
#Test Case 1
Verify Homepage
    open browser    https://dev.lightningdragongames.gg/home   chrome
    Maximize Browser Window
    Sleep    5s
    Capture Page Screenshot    ${TEST_NAME}1.png
    Click Link    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[3]/div/div/a[1]
    Sleep    5s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[2]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-3    testa@mailinator.com
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[3]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-4    Pass@123
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}2.png
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[5]/button
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}3.png
    Sleep    3s
    Close Browser

#Test Case 2
Interact with Homepage Featured-Hompage-ShopItems
    open browser    https://dev.lightningdragongames.gg/home   chrome
    Maximize Browser Window
    Sleep    5s
    Capture Page Screenshot    ${TEST_NAME}1.png
    Click Link    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[3]/div/div/a[1]
    Sleep    5s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[2]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-3    testa@mailinator.com
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[3]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-4    Pass@123
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}2.png
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[5]/button
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}3.png
    Sleep    3s
    Scroll Screen by Percent    20
    Sleep    5s
    Click Element    xpath:/html/body/app-root/div/div/app-home/div/section[2]/app-home-grid[1]/div/mat-tab-group/div/mat-tab-body/div/div/esports-tournament-card[1]/div/div[2]/div
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}4.png
    Sleep    2s
    Click Element    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[1]/a[2]
    Scroll Screen by Percent    40
    Sleep    2s
    #No broadcast item upon writing of script
    Scroll Screen by Percent    60
    Sleep    3s
    Click Button    xpath:/html/body/app-root/div/div/app-home/div/section[2]/app-home-grid[3]/div/div/div/app-shop-card[1]/a/div[3]/button
    Sleep    2s
    Capture Page Screenshot    ${TEST_NAME}5.png
    Sleep    2s
    Close Browser

#Test Case 3
Check Discover Section
    open browser    https://dev.lightningdragongames.gg/home   chrome
    Maximize Browser Window
    Sleep    5s
    Capture Page Screenshot    ${TEST_NAME}_LandingPage.png
    Click Link    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[3]/div/div/a[1]
    Sleep    5s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[2]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-3    testa@mailinator.com
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[3]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-4    Pass@123
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_LoginPage.png
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[5]/button
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_Homepage.png
    Sleep    3s
    #Clicks the first featured article in the section
    Click Element    xpath:/html/body/app-root/div/div/app-home/div/section[1]/div[1]/div[2]/div
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}1stArticle.png
    Scroll Screen by Percent    20
    Sleep    1s
    Scroll Screen by Percent    50
    Sleep    1s
    Sleep    2s
    Click Button    xpath:/html/body/app-root/div/div/app-article-post/div/div/div/div/div[1]/button
    Sleep    2s
    #clicks the second featured article in the section
    Click Element    xpath:/html/body/app-root/div/div/app-home/div/section[1]/div[1]/div[3]/div
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}2ndArticle.png
    Sleep    2s
    Scroll Screen by Percent    20
    Sleep    1s
    Scroll Screen by Percent    50
    Sleep    1s
    Click Button    xpath:/html/body/app-root/div/div/app-article-post/div/div/div/div/div[1]/button
    Sleep    2s
    #clicks the third featured article in the section
    Click Element    xpath:/html/body/app-root/div/div/app-home/div/section[1]/div[1]/div[4]/div
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}3rdArticle.png
    Sleep    2s
    Scroll Screen by Percent    20
    Sleep    1s
    Scroll Screen by Percent    50
    Sleep    1s
    Click Button    xpath:/html/body/app-root/div/div/app-article-post/div/div/div/div/div[1]/button
    Sleep    2s   
    Close Browser

#Test Case 4
My Wallet Section
    open browser    https://dev.lightningdragongames.gg/home   chrome
    Maximize Browser Window
    Sleep    5s
    Capture Page Screenshot    ${TEST_NAME}_LandingPage.png
    Click Link    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[3]/div/div/a[1]
    Sleep    5s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[2]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-3    testa@mailinator.com
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[3]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-4    Pass@123
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_LoginPage.png
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[5]/button
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_Homepage.png
    Sleep    5s
    #Click + icon on My Wallet Section
    Wait Until Page Contains Element    css=.icon
    Click Element    xpath:/html/body/app-root/div/div/app-home/div/section[3]/app-collapsible-box[1]/div/div[1]/span[2]
    Sleep    2s
    Capture Page Screenshot    ${TEST_NAME}_MyWalletPlusButton.png
    Sleep    2s
    Reload Page
    #Fix this part, modal is not closing
    #Wait Until Page Contains Element    xpath:path[@d="M19 6.41L17.59 5L12 10.59L6.41 5L5 6.41L10.59 12L5 17.59L6.41 19L12 13.41L17.59 19L19 17.59L13.41 12L19 6.41Z"]
    #Click Element    css=button-notbg btn-close
    Sleep    10s
    #Click the My Wallet Section
    Click Element    xpath:/html/body/app-root/div/div/app-home/div/section[3]/app-collapsible-box[1]/div
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_MyWalletPageClicked.png
    Sleep    2s
    Close Browser

#Test Case 5
My Team Section
    open browser    https://dev.lightningdragongames.gg/home   chrome
    Maximize Browser Window
    Sleep    5s
    Capture Page Screenshot    ${TEST_NAME}_LandingPage.png
    Click Link    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[3]/div/div/a[1]
    Sleep    5s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[2]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-3    testa@mailinator.com
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[3]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-4    Pass@123
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_LoginPage.png
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[5]/button
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_Homepage.png
    Sleep    5s
    #Click + icon on My Teams Section
    Click Element    xpath:/html/body/app-root/div/div/app-home/div/section[3]/app-collapsible-box[2]/div/div[1]/span[2]
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}MyTeamPage.png
    Sleep    3s
    #Go back to home
    Click Element    xpath:/html/body/app-root/app-create-team/app-header-create/header/section/div/div/div/div[1]/a
    Sleep    2s
    Close Browser

#Test Case 6
My Game Accounts Section
    open browser    https://dev.lightningdragongames.gg/home   chrome
    Maximize Browser Window
    Sleep    5s
    Capture Page Screenshot    ${TEST_NAME}_LandingPage.png
    Click Link    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[3]/div/div/a[1]
    Sleep    5s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[2]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-3    testa@mailinator.com
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[3]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-4    Pass@123
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_LoginPage.png
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[5]/button
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_Homepage.png
    Sleep    5s
    #Click + icon on My Game Accounts Section
    Click Element    xpath:/html/body/app-root/div/div/app-home/div/section[3]/app-collapsible-box[3]/div/div[1]/span[2]
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}GameAccountsTab.png
    Sleep    3s
    #Go back to home
    Click Element    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[1]/a[2]
    Sleep    2s
    Close Browser

#Test Case 7
TournamentWatchShopLeaderboard
    open browser    https://dev.lightningdragongames.gg/home   chrome
    Maximize Browser Window
    Sleep    5s
    Capture Page Screenshot    ${TEST_NAME}_LandingPage.png
    Click Link    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[3]/div/div/a[1]
    Sleep    5s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[2]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-3    testa@mailinator.com
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[3]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-4    Pass@123
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_LoginPage.png
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[5]/button
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_Homepage.png
    Sleep    5s
    #Click Tournament Button
    Mouse Over    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[1]/div/div[1]
    Sleep    2s
    Click Element    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[1]/div/div[1]
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_TournamentPage.png
    #incorporate scroll mechanism here
    Click Element    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[1]/a[2]
    Sleep    3s
    #Click Watch Button
    Mouse Over    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[2]/div/div[1]
    Sleep    2s
    Click Element    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[2]/div/div[1]
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_WatchPage.png
    #Incorporate scroll mechanism here
    Click Element    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[1]/a[2]
    Sleep    2s
    #Click Shop Button
    Mouse Over    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[3]/div/div[1]
    Sleep    2s
    Click Element    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[3]/div/div[1]
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_ShopPage.png
    Sleep    2s
    #Incorporate Scroll Mechanism Here
    Click Element    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[1]/a[2]
    Sleep    2s
    #Click Leaderboard
    Mouse Over    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[4]/div/div[1]
    Sleep    2s
    Click Element    xpath:/html/body/app-root/div/div/app-home/div/section[2]/div[2]/app-categories[4]/div/div[1]
    Sleep    2s
    Capture Page Screenshot    ${TEST_NAME}_LeaderboardPage.png
    #incorporate Scroll Mechanism Here
    Click Element    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[1]/a[2]
    Sleep    2s
    Close Browser
#ideas: After mouse over, take screenshots to check inactive/active status of buttons

#Test Case 8
Notification Bell
    open browser    https://dev.lightningdragongames.gg/home   chrome
    Maximize Browser Window
    Sleep    5s
    Capture Page Screenshot    ${TEST_NAME}_LandingPage.png
    Click Link    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[3]/div/div/a[1]
    Sleep    5s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[2]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-3    testa@mailinator.com
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[3]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-4    Pass@123
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_LoginPage.png
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[5]/button
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_Homepage.png
    Sleep    5s
    #Click Bell Icon
    Click Element    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[3]/div/div[1]/button[2]/img[1]
    Sleep    2s
    Capture Page Screenshot    ${TEST_NAME}_ClickBell.png
    Sleep    2s
    #Click Top unread notification
    Click Element    class=notification-info
    Sleep    3s
    Click Element    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[1]/a[2]
    Sleep    2s
    #Click View All
    Click Element    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[3]/div/div[1]/button[2]/img[1]
    Click Element    class=notification-viewall
    Sleep    2s
    Capture Page Screenshot    ${TEST_NAME}_NotificationPage.png
    Sleep    2s
    #Click select all notification
    Click Element    xpath:/html/body/app-root/div/div/app-notifications/div/div[2]/section/table/thead/tr/th[1]/mat-checkbox/div/div/input
    Sleep    2s
    Capture Page Screenshot    ${TEST_NAME}_SelectAllNotification.png
    Sleep    1s
    #Unselect all notification
    Click Element    xpath:/html/body/app-root/div/div/app-notifications/div/div[2]/section/table/thead/tr/th[1]/mat-checkbox/div/div/input
    Sleep    2s
    #Check top notification
    Click Element    xpath:/html/body/app-root/div/div/app-notifications/div/div[2]/section/table/tbody/tr[1]/td[1]/mat-checkbox/div/div/input
    Sleep    2s
    Capture Page Screenshot    ${TEST_NAME}_TopNotif.png
    Click Element    xpath:/html/body/app-root/div/div/app-notifications/div/div[2]/section/table/tbody/tr[1]/td[1]/mat-checkbox/div/div/input
    Sleep    2s
    #Open a notification
    Click Element    xpath:/html/body/app-root/div/div/app-notifications/div/div[2]/section/table/tbody/tr[1]/td[2]/span/div/p[1]
    Sleep    2s
    Close Browser

#Test Case 9
Chat Icon
    open browser    https://dev.lightningdragongames.gg/home   chrome
    Maximize Browser Window
    Sleep    5s
    Capture Page Screenshot    ${TEST_NAME}_LandingPage.png
    Click Link    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[3]/div/div/a[1]
    Sleep    5s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[2]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-3    testa@mailinator.com
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[3]/div/label/div/mat-form-field/div[1]/div/div[2]/input
    Input Text    id:mat-input-4    Pass@123
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_LoginPage.png
    Sleep    3s
    Click Element    xpath:/html/body/app-root/app-log-reg/section/div/div/div/div/div[2]/app-submit-form/section/form/div[5]/button
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}_Homepage.png
    Sleep    5s
    
*** Keywords ***
#Responsible for scrolling down the screen
Scroll Screen by Percent
    [Arguments]    ${percentage}
    ${scrollHeight} =    Execute Javascript    return (document.body.scrollHeight * ${percentage}) / 100
    Execute Javascript    window.scrollTo(0, ${scrollHeight})