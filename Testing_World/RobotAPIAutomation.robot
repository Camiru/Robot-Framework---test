*** Settings ***
Library           RequestsLibrary

*** Variables ***
${Base_URL}       https://reqres.in/

*** Test Cases ***
TC_001_Get_Request.robot
    Create session    Get_page2_users    ${Base_URL}
    $(response) = get request    Get_page2_users    /api/users?page=2
    log to console    $(response.status.code)
    log to console    $(response.content)
