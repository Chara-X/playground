*** Comments ***
123
123
123
1233


*** Settings ***
Documentation       Example using the space separated format.

Library             OperatingSystem


*** Variables ***
${MESSAGE}      Hello, world!


*** Test Cases ***
My Test
    [Documentation]    Example test.
    Log    ${MESSAGE}
    ${MESSAGE} =    Append To File    path=123    content=123
    My Keyword    ${CURDIR}
    My Keyword    path=123
    Log    \

Another Test
    Should Be Equal    ${MESSAGE}    Hello, world!


*** Keywords ***
My Keyword
    [Arguments]    ${path}
    Directory Should Exist    ${path}
