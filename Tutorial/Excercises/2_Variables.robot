*** Variables ***
${FIRST_NAME}    Seppo
${LAST_NAME}    Sorsatar


*** Test Cases ***
Say My Name
    [Tags]    example
    Log To Console    Hello, My Name is ${FIRST_NAME} ${LAST_NAME}

#Try variables
#    [Documentation]    Try out variables. See https://docs.robotframework.org/docs/variables
