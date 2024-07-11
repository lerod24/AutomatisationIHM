*** Settings ***
Library  SeleniumLibrary
Resource  ..//variables.robot

*** Keywords ***
charger la page web
    Go To  ${GOOGLE_url}

    Wait Until Page Contains  Google

    Click Element  xpath=//*[@id="L2AGLb"]/div



chercher le site web
    Clear Element Text  name=q


    Input Text  name=q  amazon


    #Mouse Down  id=logo

    #Mouse Up  id=logo

    #sleep     10s

    #Press Keys  xpath=//*[@id="APjFqb"]  \\13
    Click Element  name=btnK

    Wait Until Page Contains  Images



Naviguer vers le site amazon

    Click Element  xpath=//*[@id="rso"]/div[1]/div/div/div/div/div/div/div/div[1]/div/span/a/h3


    Wait Until Page Contains  commandes


Rechercher le produit
    Clear Element Text  xpath=//*[@id="twotabsearchtextbox"]

    #sleep     10s

    Input Text  xpath=//*[@id="twotabsearchtextbox"]  rj45 cable

    Click Element  xpath=//*[@id="nav-search-submit-button"]

    Wait Until Page Contains  rj45 cable

    sleep     30s



