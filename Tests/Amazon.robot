*** Settings ***
Documentation     This is some basic info about the whole suite
Library           SeleniumLibrary



*** Variables ***



*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  https://www.amazon.com  chrome
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  id=nav-search-submit-button
    Wait Until Page Contains  "Ferrari 458"
    #Click Link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[3]/div/div/div/div/div/div/div[2]/div[1]/h2/a/span
    #Click Button  id=add-to-cart-button
    #Wait Until Page Contains  Added to Cart
    #Click Link  id=hlb-ptc-btn-native
    #Page Should Contain Element  continue
    Close Browser




*** Keywords ***


