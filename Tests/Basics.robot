*** Settings ***
Library     Collections
Library     String
Library     Process
Library     DateTime
Library     OperatingSystem
Library     SeleniumLibrary
Resource    Resources/keywords.resource
Resource    Resources/Suite_Setup.resource

*** Test Cases ***
Test Case 1
    Set Selenium Speed    0.5s
    Log To Console    Hello world!
    Open Browser    browser=chrome
    Go To    https://www.google.com/
    Wait Until Element Is Visible    //button[@id="L2AGLb"]
    Click Element    //button[@id="L2AGLb"]
    Input Text    //*[@id="APjFqb"]    Hello world!
    Press Keys    //*[@id="APjFqb"]    RETURN
