*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           http://localhost:7272/Lab4/Registration.html
${BROWSER}        chrome

*** Test Cases ***

Scenario 1: Empty First Name and Last Name

    Open Browser    ${URL}    ${BROWSER}
    Input Text      id=organization    CS KKU
    Input Text      id=email           somyod@kkumail.com
    Input Text      id=phone           091-001-1234
    Click Button    id=registerButton

    Element Should Contain    id=errors    Please enter your name!!
    [Teardown]    Close Browser

