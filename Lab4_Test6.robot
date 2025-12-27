*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           http://localhost:7272/Lab4/Registration.html
${BROWSER}        chrome

*** Test Cases ***

Scenario 2: Empty Email

    Open Browser    ${URL}    ${BROWSER}
    Input Text      id=firstname       Somyod
    Input Text      id=lastname        Sodsai
    Input Text      id=organization    CS KKU
    Input Text      id=phone           091-001-1234
    Click Button    id=registerButton

    Element Should Contain    id=errors    Please enter your email!!
    [Teardown]    Close Browser



