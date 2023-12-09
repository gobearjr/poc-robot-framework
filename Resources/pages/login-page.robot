*** Settings ***
Library    AppiumLibrary

*** Variables ***
#*** Login Page Locator ***
${EMAIL_FIELD}          xpath=//android.widget.EditText[@content-desc="test-Username"]
${PASSWORD_FIELD}      xpath=//android.widget.EditText[@content-desc="test-Password"]
${LOGIN_BUTTON}        xpath=//android.view.ViewGroup[@content-desc="test-LOGIN"]
${HOME_PRODUCT}        xpath=//android.widget.TextView[@text="PRODUCTS"]
${DRAWER_MENU}        xpath=//android.view.ViewGroup[@content-desc="test-Menu"]/android.view.ViewGroup/android.widget.ImageView
${LOGOUT_BUTTON}        xpath=//android.view.ViewGroup[@content-desc="test-LOGOUT"]

*** Keywords ***
Sign in
    [Arguments]    ${USERNAME}    ${USER_PASSWORD}
    Input Text        ${EMAIL_FIELD}    ${USERNAME}   
    Input Password     ${PASSWORD_FIELD}    ${USER_PASSWORD}
    Click Element                 ${LOGIN_BUTTON}

Verify Successfully Login
    AppiumLibrary.Wait Until Page Contains Element   ${HOME_PRODUCT}

Sign out
    Click Element    ${DRAWER_MENU}
    Click Element    ${LOGOUT_BUTTON}

Verify Successfully Logout
    AppiumLibrary.Wait Until Page Contains Element    ${LOGIN_BUTTON}
