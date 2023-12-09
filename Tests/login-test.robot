*** Settings ***
Library               AppiumLibrary
Resource              ../Resources/pages/login-page.robot
Resource              ../Resources/settings/environment-variable.robot
Resource              ../Resources/settings/global-variable.robot

*** Test Cases ***

As User I am able to Login and Logout properly
    When Launch Mobile Application
    And Sign in    ${USERNAME}    ${PASSWORD}
    Then Verify Successfully Login
    And Sign out
    Then Verify Successfully Logout
