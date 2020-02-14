*** Settings ***
Documentation  This file contains an automated test for testing the "Click" application
# Preconditions:
Library  SeleniumLibrary
Resource  ../Keywords/kw.robot
Test Setup  Open browser and open app
Test Teardown  Close browser
*** Test Cases ***

# To run the test, please, copy/past down to Terminal:     robot -d results Tests/Click.robot
App functional testing
    [Documentation]  ID-1 automated smoke testing
    [Tags]  ID-1
    Enter your team name
    Checking column position number and "Team clicks" number before and after clicking
    Checking "Your clicks" number before and after clicking

