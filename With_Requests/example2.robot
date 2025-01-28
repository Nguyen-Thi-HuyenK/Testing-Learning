*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Test Cases ***
Validate Simple GET Request
    ${response}    GET    ${BASE_URL}/posts/1
    Log    ${response.url}    DEBUG
    Should Be Equal As Numbers    ${response.status_code}    200
    Should Contain    ${response.json()}    userId
    Log    ${response.json()}   