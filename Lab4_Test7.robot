*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           http://localhost:7272/Lab4/Registration.html
${BROWSER}        chrome

*** Test Cases ***

Scenario 3: Empty Phone Number

    Open Browser    ${URL}    ${BROWSER}
    Input Text      id=firstname       Somyod
    Input Text      id=lastname        Sodsai
    Input Text      id=organization    CS KKU
    Input Text      id=email           somyod@kkumail.com
    Click Button    id=registerButton

    Element Should Contain    id=errors    Please enter your phone number!!
    [Teardown]    Close Browser



