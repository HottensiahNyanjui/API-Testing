*** Settings ***
Documentation       Test suite for RESTful Booker API authentication endpoint

Resource            resources.robot


*** Test Cases ***
Generate Valid Auth Token
    [Documentation]    Generate a valid authentication token using correct credentials
    Create Session    booking    ${BASE_URL}
    ${body}=    Create Dictionary    username=${USERNAME}    password=${PASSWORD}
    ${response}=    POST On Session    booking    /auth    json=${body}
    Should Be Equal As Integers    ${response.status_code}    200
    ${json}=    Set Variable    ${response.json()}
    Should Contain    ${json}    token

