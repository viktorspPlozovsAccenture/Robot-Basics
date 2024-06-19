*** Settings ***
Library     Collections
Library     String
Library     Process
Library     BuiltIn
Library     DateTime
Library     OperatingSystem
Library     RPA.Browser.Selenium                auto_close=${FALSE}
Resource    Resources/keywords.resource
Resource    Resources/Suite_Setup.resource
Resource    Resources/variables.resource


*** Test Cases ***
Test 1
    Log To Console    Hello world!
    Open Browser    browser=chrome
    Go To    https://www.google.com/
    Wait Until Element Is Visible    (//button)[4]
    Click Element    (//button)[4]
