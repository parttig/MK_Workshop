*** Settings ***
Documentation   This is a test for logging in https://practicetestautomation.com/practice-test-login/
...             Test 1 Prepare a test that completes the login with correct credentials
...             Test 2 Prepare a test that tries to log in with wrong credentials
...             Hint: Check Browser library for keywords Fill Text, Click, Get Text
Library         Browser

*** Variables ***
${website}=    https://practicetestautomation.com/practice-test-login/
${username}=    student
${password}=    Password123
${wrong_username}=    robot
${wrong_password}=    rockyou


*** Test Cases ***
Test1
    New Browser    headless=False
    New Context
    New Page    ${website}
    Sleep    2
    Fill Text    id=username    ${username}
    Sleep    2
    Fill Text    id=password    ${password}
    Sleep    2
    Click    id=submit
    Sleep    2
    Get Text    h1    ==    Logged In Successfully

Test2
    New Browser    headless=False
    New Context
    New Page    ${website}
    Sleep    2
    Fill Text    id=username    ${wrong_username}
    Sleep    2
    Fill Text    id=password    ${password}
    Sleep    2
    Click    id=submit
    Sleep    2
    Get Element    id=error