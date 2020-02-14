*** Settings ***
Documentation  Documentation  This file contains variables for testing
Library  SeleniumLibrary
*** Variables ***
# Test Setup:
${BROWSER}  chrome
${URL}  https://test-stfu-applifting.herokuapp.com
#==========================================###################=========================================================#
# Main page
# Number of clicking:
${Robot_Clicks}  100
#==========================================###################=========================================================#
# Main page
${team_name_field}  id=name
${team_name}  rustem_rob_test
#  rustem_rob_test
${mainpage_click_bttn}  //button[@type='submit']
#==========================================###################=========================================================#
# Second Page
${CLICK_bttn}  //button[@class='sc-bdVaJa sc-kgoBCf hMxnjl']
${your_clicks_text}  //div/div[@class='sc-chPdSV gvLmyx'][1]/h3
${your_clicks_number}  //div/div[@class='sc-chPdSV gvLmyx'][1]/p
${team_clicks_text}  //div/div[@class='sc-chPdSV gvLmyx'][2]/h3
${team_clicks_number}  //div/div[@class='sc-chPdSV gvLmyx'][2]/p
${column_position}  //tr[@class='sc-dnqmqq eHeozA']/td[1]
${column_name}  //tr[@class='sc-dnqmqq eHeozA']/td[2]
${column_clicks_number}  //tr[@class='sc-dnqmqq eHeozA']/td[3]
#==========================================###################=========================================================#

