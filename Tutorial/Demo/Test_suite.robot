*** Settings ***
Documentation    This is a demo suite
Resource    Test_keywords.resource
Suite Setup    Navigoi sivulle ${gofore}

*** Variables ***
${gofore}=    http://gofore.com

*** Test Cases ***

Jobs and filter
    [Documentation]    Clicks to jobs and filter them
    Vaihda Kieli    suomi
    Siirry työpaikkoihin
