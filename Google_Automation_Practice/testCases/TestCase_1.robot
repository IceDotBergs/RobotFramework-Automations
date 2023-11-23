*** Settings ***
Library    SeleniumLibrary
Documentation    Test case for Google.com landing page

Resource    ../Resources/setupTeardown/SetupAndTeardown.robot
Resource    ../Resources/pageObjects/subMenuStrip.robot

Test Setup    SetupAndTeardown.StartBrowser
Test Teardown    SetupAndTeardown.CloseBrowser

*** Test Cases ***
Basic Search
    subMenuStrip.Click Search
    subMenuStrip.Search an Item
