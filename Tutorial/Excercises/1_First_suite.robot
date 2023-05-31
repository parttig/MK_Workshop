*** Test Cases ***
My Simple Test
    [Tags]    testi
    Log     Hello World
    Log To Console     Hello World Console
    Should Be Equal    Hello    Hello

My failing Test
    Log To Console    This test case fails
    Should Be Equal    Hello    World!

#My First Test
#    [Documentation]    Try writing your first test. Use keywords like: Log, Should be..., Sleep.
#    ...    See documentation: https://robotframework.org/robotframework/latest/libraries/BuiltIn.html
