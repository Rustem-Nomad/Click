*** Settings ***
Documentation  This file contains keywords for testing
Library  SeleniumLibrary
Resource  ../Variables/vrb.robot


*** Keywords ***
# Test Setup:
Open browser and open app
    [Documentation]  Preconditions
    open browser  ${URL}  ${BROWSER}
    maximize browser window
#==========================================###################=========================================================#
# Main page:
Enter your team name
    [Documentation]  Input "team name" and press "submit" button
    input text  ${team_name_field}  ${team_name}
    click element  ${mainpage_click_bttn}
#==========================================###################=========================================================#
# Second Page
CLICK button
    [Documentation]  Repeatedly pressing the "Click" button
    [Tags]  smoke
    :FOR  ${n}  IN RANGE  ${Robot_Clicks}
    \   wait until keyword succeeds  10s  1s  click element  ${CLICK_bttn}
    sleep  2s
#==========================================###################=========================================================#
Checking column position number and "Team clicks" number before and after clicking
    [Documentation]  Checking team position and the number of “team clicks” with
    ...     the number of "clicks" in column before and after clicking
    sleep  2s
#  Get column position number and "Team clicks" number  Before clicking:
    Scroll Element Into View   ${column_position}
    ${POSITION_number_BEFORE}  Get Text   ${column_position}
    ${TEAM_CLICKS_number_BEFORE}  Get text  ${team_clicks_number}
#  Pressing "CLICK" button:
    CLICK button
#  Get column position number and "Team clicks" number  After clicking:
    ${POSITION_number_AFTER}  Get Text   ${column_position}
    ${TEAM_CLICKS_number_AFTER}  Get text  ${team_clicks_number}
    ${TEAM_CLICKS_COLUMN_number}  Get Text  ${column_clicks_number}
    ${TEAM_NAME_COLUMN}  Get Text   ${column_name}
    Should Be Equal As Numbers  ${TEAM_CLICKS_number_AFTER}  ${TEAM_CLICKS_COLUMN_number}
    Should Not Be Equal As Numbers  ${TEAM_CLICKS_number_BEFORE}  ${TEAM_CLICKS_number_AFTER}
    Should Not Be Equal As Numbers  ${POSITION_number_BEFORE}  ${POSITION_number_AFTER}
#==========================================###################=========================================================#
Checking "Your clicks" number before and after clicking
    [Documentation]  Checking the number of “your clicks” with the number of clicks on the button
    ${YOUR_CLICKS_number}  Get text  ${your_clicks_number}
    Should Be Equal As Numbers  ${YOUR_CLICKS_number}  ${Robot_Clicks}


