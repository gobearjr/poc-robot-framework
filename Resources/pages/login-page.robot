*** Settings ***
Library    AppiumLibrary

*** Variables ***
#*** Login Page Locator ***
${EMAIL_FIELD}          xpath=//android.widget.EditText[@content-desc="test-Username"]
${PASSWORD_FIELD}      xpath=//android.widget.EditText[@content-desc="test-Password"]
${LOGIN_BUTTON}        xpath=//android.view.ViewGroup[@content-desc="test-LOGIN"]
${ERROR_LOGIN}        xpath=//android.widget.TextView[@text="Username and password do not match any user in this service."]
${HOME_PRODUCT}        xpath=//android.widget.TextView[@text="PRODUCTS"]
${DRAWER_MENU}        xpath=//android.view.ViewGroup[@content-desc="test-Menu"]/android.view.ViewGroup/android.widget.ImageView
${LOGOUT_BUTTON}        xpath=//android.view.ViewGroup[@content-desc="test-LOGOUT"]

*** Keywords ***
I try to Sign in
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Input Text        ${EMAIL_FIELD}    ${USERNAME}   
    Input Password     ${PASSWORD_FIELD}    ${PASSWORD}
    Click Element                 ${LOGIN_BUTTON}

I am on home page
    AppiumLibrary.Wait Until Page Contains Element   ${HOME_PRODUCT}

I see failed login pop up
    AppiumLibrary.Wait Until Page Contains Element   ${ERROR_LOGIN}

I try to Sign out
    Click Element    ${DRAWER_MENU}
    Click Element    ${LOGOUT_BUTTON}

I am on login page
    AppiumLibrary.Wait Until Page Contains Element    ${LOGIN_BUTTON}
