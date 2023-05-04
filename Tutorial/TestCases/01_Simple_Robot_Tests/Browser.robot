*** Settings ***
Library     Browser


*** Test Cases ***
Website
    New Browser    headless=False
    New Context
    New Page    http://gofore.com
    #Click    
    #Get Title 
    #Get Url   