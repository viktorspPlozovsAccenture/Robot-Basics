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
Test Case 1
    Set Selenium Speed    1 second
    Log To Console    Hello world!
    Open Browser    browser=chrome
    Go To    https://www.google.com/
    Wait Until Element Is Visible    //button[@id="L2AGLb"]
    Click Element    //button[@id="L2AGLb"]
    Input Text    //*[@id="APjFqb"]    Hello world!
    Press Keys    //*[@id="APjFqb"]    RETURN
