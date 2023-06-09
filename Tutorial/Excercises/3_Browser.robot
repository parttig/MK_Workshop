*** Settings ***
Documentation    Let's try xpaths and Browser library
Library     Browser


*** Test Cases ***
Locating Elements
    [Documentation]    This test opens a browser and shows different ways to locate clickable elements
    [Tags]    example
    New Browser    headless=False
    New Context
    New Page    http://gofore.com
    #Locating with words
    Click    "Cases"
    Sleep    3
    #Locating with xpath
    Click    xpath=//ul[@class="language-selector hide-on-mobile-nav-view"]/descendant::a[@lang="fi"]
    #The next locator doesn't work because the locator isn't unique
    #Click    "fi"
    Sleep    3
    #Get Title
    #Get Url

#Your First Test
#    [Documentation]    Try locating and clicking elements at gofore.com.
#    ...    ​Hint: check documentation for keywords Click, Get..., Fill Text
#    ...    https://marketsquare.github.io/robotframework-browser/Browser.html
#    [Tags]    test
#    New Browser    headless=False
#    New Context
#    New Page    http://gofore.com
    #Your content