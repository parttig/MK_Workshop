*** Settings ***
Documentation    This is a demo suite
Library     Browser
Resource    Test_keywords.resource


*** Test Cases ***
Website
    [Documentation]    Open a website
    New Browser    headless=False
    New Context
    New Page    http://gofore.com
    #Click
    #Get Title
    #Get Url

Blogs and filter
    [Documentation]    Clicks to blogs and filters