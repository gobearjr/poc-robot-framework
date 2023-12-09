*** Settings ***
Library               AppiumLibrary
Resource              ../Resources/pages/login-page.robot
Resource              ../Resources/settings/environment-variable.robot
Resource    ../Resources/settings/global-variable.robot

*** Test Cases ***

Direct Login and Logout
    Launch Mobile Application
    Sign in    ${USERNAME}    ${PASSWORD}
    Verify Successfully Login
    Sign out
    Verify Successfully Logout
