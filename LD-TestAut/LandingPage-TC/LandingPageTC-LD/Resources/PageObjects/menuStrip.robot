***Settings***

Documentation    Menu Strip Page Object
Resource    ../../../LandingPageTC-LD/Resources/CommonFunctionalities.robot

*** Keywords ***
Click home
    Wait Until Element Is Enabled    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[1]/a[2]    timeout=30s
    #Click Element    xpath://a[@href='/home']
    Click Element    xpath:/html/body/app-root/div/app-header/header/div/div/div/div[1]/a[2]

Click Play Dropdown
    Click Element    xpath://span[text()=' Play ']

Click Tournaments
    Click Element    xpath://span[text()=' Tournaments ']

Click Leaderboards
    Click Element    xpath://span[text()=' Leaderboard ']

Click TeamFinder
    Click Element    xpath:..span[text()=' Team finder ']

Click Content
    Click Element    xpath://a[@href='/content']

Click Watch
    Click Element    xpath://a[@href='/watch']

Click Shop
    Click Element    xpath://a[@href='/shop']

Click SearchBar
    Click Element    class:.SearchInput-field.ng-untouched.ng-pristine.ng-valid

Click ChatBubble
    Click Element    class:.d-none.d-sm-block

Click NotifBell
    Click Element    class:.mat-mdc-menu-trigger.mat-badge.d-none.d-md-block.mat-badge-overlap.mat-badge-above.mat-badge-after.mat-badge-medium.ng-star-inserted

Click ProfileDropdown
    Click Element    class:.mat-icon.notranslate.mat-mdc-menu-trigger.Header-user-arrow.material-icons.mat-ligature-font.mat-icon-no-color

Click ProfileOverview
    Click Element    xpath://a[@href='/profile/dashboard']

Click ProfileTournaments
    Click Element    xpath://a[@href='/profile/tournaments-created']

Click ProfileMatches
    Click Element    xpath://a[@href='/profile/matches']

Click ProfileTeams
    Click Element    xpath://a[@href='/profile/my-teams]

Click ProfileStatistcs
    Click Element    xpath://a[@href='/profile/my-stats']

Click ProfileFavorites
    Click Element    xpath://a[@href='/wallet']

Click CreateTournament
    Click Element    xpath://a[@href='/create-tournament']

Click AccountSettings
    Click Element    xpath://a[@href='/account_settings/accountSettings']

Click Admin
    Click Element    xpath://a[@href='/admin']

Click LogOut
    Click Element    class:.Header-user-link.logout