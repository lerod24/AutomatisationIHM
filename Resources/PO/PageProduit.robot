*** Settings ***
Library  seleniumlibrary

*** Keywords ***
choisir Produit Interessant
    Click Link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[3]/div/div/div/div/span/div/div/div[3]/div[1]/h2/a

    Wait Until Page Contains  Ajouter au panier

Cliquer Sur Liste Deroulante
    [Arguments]    ${DROPDOWN_LOCATOR}    ${OPTION_LABEL}
    Wait Until Element Is Visible    ${DROPDOWN_LOCATOR}
    Select From List By Label    ${DROPDOWN_LOCATOR}    ${OPTION_LABEL}
    # Ou vous pouvez utiliser Select From List By Value ou Select From List By Index selon vos besoins

Choisir taille cable


Ajouter produit au panier