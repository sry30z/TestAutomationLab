*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           http://localhost:7272/Lab4/Registration.html
${BROWSER}        chrome

*** Test Cases ***
Register Fail Empty First Name
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text      id=lastname        Sodsai
    Input Text      id=organization    CS KKU
    Input Text      id=email           somyod@kkumail.com
    Input Text      id=phone           091-001-1234
    Click Button    id=registerButton
    

    Wait Until Element Contains    id=errors    Please enter your first name!!
    [Teardown]    Close Browser