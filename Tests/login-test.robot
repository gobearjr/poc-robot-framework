*** Settings ***
Library               AppiumLibrary
Resource              ../Resources/pages/login-page.robot
Resource              ../Resources/settings/environment-variable.robot
Resource              ../Resources/settings/global-variable.robot

*** Test Cases ***

As User I can not login using random data
    Given Launch Mobile Application
    When I try to Sign in    ${INVALID_USER}    ${INVALID_PASSWORD}
    Then I see failed login pop up

As User I am able to Login and Logout properly
    When I try to Sign in    ${USERNAME}    ${PASSWORD}
    Then I am on home page
    And I try to Sign out
    Then I am on login page



