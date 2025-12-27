*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           http://localhost:7272/Lab4/Registration.html
${BROWSER}        chrome

*** Test Cases ***
Register Success With Full Info
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text      id=firstname       Somyod
    Input Text      id=lastname        Sodsai
    Input Text      id=organization    CS KKU
    Input Text      id=email           somyod@kkumail.com
    Input Text      id=phone           091-001-1234
    Click Button    id=registerButton
    Sleep    3s 
    

    Title Should Be    Success
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.
    [Teardown]    Close Browser