*** Variables ***
${FIRST_NAME}    Seppo
${LAST_NAME}    Sorsa


*** Test Cases ***
Say My Name
    [Tags]    example
    Log To Console    Hello, My Name is ${FIRST_NAME} ${LAST_NAME}
