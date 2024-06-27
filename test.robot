*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}          edge
${SEARCH_TERM}      Robot Framework
${SEARCH_RESULT}    selenium
${URL}              https://www.google.com


*** Test Cases ***
Search Google and Verify Results
    [Documentation]    Test case to search Google and verify results
    [Tags]    search
    Open Google
    Input Search Term
    Enter Google Search
    Verify Search Results
    Close Browser
Search Google and Check Results
    [Documentation]    Test case to search Google and verify results
    [Tags]    search
    Open Google
    Input Search Term
    Enter Google Search
    Verify Search Results
    Close Browser
Search Yahoo and Check Results
    [Documentation]    Test case to search Google and verify results
    [Tags]    search
    Open Yahoo
    Input Search Term Yahoo
    Enter Yahoo Search
    Verify Search Results
    Close Browser


*** Keywords ***
Open Google
    Open Browser    https://www.google.com    ${BROWSER}

Input Search Term
    Input Text    name=q    ${SEARCH_TERM}

Enter Google Search
    Press Keys    name=q    ENTER

Verify Search Results
    Page Should Contain    ${SEARCH_RESULT}

Open Yahoo
    Open Browser   https://www.yahoo.com/    ${BROWSER}

Input Search Term Yahoo
    Input Text    name=p    ${SEARCH_TERM}
Enter Yahoo Search
    Press Keys    name=p    ENTER