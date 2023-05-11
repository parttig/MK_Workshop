*** Settings ***
Documentation   This is a test for logging in https://practicetestautomation.com/practice-test-login/
...             Test 1 Prepare a test that completes the login with correct credentials
...             Test 2 Prepare a test that tries to log in with wrong credentials
...             Hint: Check Browser library for keywords Fill Text, Click, Get Text
Library         Browser

*** Variables ***
#${username}=
#${password}=

*** Test Cases ***
Test1
    New Browser    headless=False
    New Context
    New Page    https://practicetestautomation.com/practice-test-login/
    # Login
    # Verify Login