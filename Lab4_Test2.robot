*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           http://localhost:7272/Lab4/Registration.html
${BROWSER}        chrome

*** Test Cases ***
Register Success No Organization
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text      id=firstname       Somyod
    Input Text      id=lastname        Sodsai
    # ข้ามช่อง Organization
    Input Text      id=email           somyod@kkumail.com
    Input Text      id=phone           091-001-1234
    Click Button    id=registerButton
    
    Title Should Be    Success
    Page Should Contain    Thank you for registering with us.
    [Teardown]    Close Browser