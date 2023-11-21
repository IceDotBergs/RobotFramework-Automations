*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Chat Icon
    open browser    https://dev.lightningdragongames.gg/home   chrome    options=add_argument("--disable-blink-features=AutomationControlled")
    Maximize Browser Window
    Sleep    5s
    Capture Page Screenshot    ${TEST_NAME}_LandingPage.png
    Wait Until Element Is Enabled    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[3]/div/div/a[1]    timeout=60s
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
    Click Element    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[3]/div/div[1]/button[1]/img[1]
    Sleep    3s
    Capture Page Screenshot    ${TEST_NAME}ChatIconClick.png
    Sleep    2s
    Click Element    xpath:/html/body/app-root/div/lib-esportschatsidebar/mat-sidenav-container/mat-sidenav/div/div/div[2]/div[7]/div[1]/div[1]/div[2]
    Sleep    2s
    Capture Page Screenshot    ${TEST_NAME}ChatOverlay.png
    Sleep    2s
    Wait Until Page Contains    xpath:xpath:/html/body/app-root/div/lib-esportschatsidebar/lib-esportschat/div/lib-chat/div[1]/div[1]/a/img
    Click Element    xpath:/html/body/app-root/div/lib-esportschatsidebar/lib-esportschat/div/lib-chat/div[1]/div[1]/a/img
    Sleep    2s
    Close Browser
