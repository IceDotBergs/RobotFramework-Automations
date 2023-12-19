***Variables***

*** Keywords ***
Click Login button
    Wait Until Element Is Enabled    xpath=//a[contains(text(),'Log in')]
    Click Link    xpath=//a[contains(text(),'Log in')]