*** Settings ***
Library     Browser
Resource    Test_keywords.robot


*** Test Cases ***
Website
    New Browser    headless=False
    New Context
    New Page    http://gofore.com
    #Click
    #Get Title
    #Get Url