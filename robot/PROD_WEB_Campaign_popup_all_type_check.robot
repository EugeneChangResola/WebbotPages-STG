*** Settings ***
Library    SeleniumLibrary

# Test environment
# Env : stg
# cid : 149 (Scenario v2)
# app : QA (Web)

*** Test Cases ***
Campaign popup widget type 1
    Open Browser    https://eugenechangresola.github.io/WebbotPages/PROD/SYNALIO/v2/?campaign=1    chrome
    Wait Until Page Contains Element    id=divtitle
    Wait Until Page Contains Element    id=synalio-campaign
    Element Should Be Visible    id=synalio-campaign
    Page Should Contain Element    css=#synalio-campaign > div > div > div.synalio-campaign_template.synalio-campaign-image_background
    Click Element    css=#synalio-campaign-popup-link
Campaign popup widget type 2
    Wait Until Page Contains Element    id=divtitle
    Wait Until Page Contains Element    id=synalio-campaign
    Element Should Be Visible    id=synalio-campaign
    Page Should Contain Element    css=#synalio-campaign > div > div > div.synalio-campaign_template.synalio-campaign-image_background
    Click Element    css=#synalio-campaign-popup-link
Campaign popup widget type 3
    Wait Until Page Contains Element    id=divtitle
    Wait Until Page Contains Element    id=synalio-campaign
    Element Should Be Visible    id=synalio-campaign
    Page Should Contain Element    css=#synalio-campaign > div > div > div.synalio-campaign-large_banner
    Click Element    css=#synalio-campaign-popup-link
Campaign popup widget type 4
    Wait Until Page Contains Element    id=divtitle
    Wait Until Page Contains Element    id=synalio-campaign
    Element Should Be Visible    id=synalio-campaign
    Page Should Contain Element    css=#synalio-campaign > div > div > div.synalio-campaign-small_banner
    Click Element    css=#synalio-campaign-popup-link
Campaign popup widget type 5
    Wait Until Page Contains Element    id=divtitle
    Wait Until Page Contains Element    id=synalio-campaign
    Element Should Be Visible    id=synalio-campaign
    Page Should Contain Element    css=#synalio-campaign > div > div > div.synalio-campaign-rich_template
    Click Element    css=#synalio-campaign-popup-link
    Wait Until Page Contains Element    id=divtitle
    Wait Until Page Contains Element    id=synalio-campaign
    Element Should Be Visible    id=synalio-campaign
    Close Browser