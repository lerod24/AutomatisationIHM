*** Settings ***
Resource  ../Resources/common.robot
Resource  ../Resources/PO/PageAccueil.robot
Resource  ../Resources/PO/PageProduit.robot

Suite Setup  common.begin web test
Suite Teardown  common.end web test

*** Test Cases ***
Voir Produits Disponibles
    PageAccueil.charger la page web
    PageAccueil.chercher le site web
    PageAccueil.Naviguer vers le site amazon
    PageAccueil.Rechercher le produit

Choisir son produit
    PageProduit.choisir Produit Interessant
    PageProduit.Cliquer Sur Liste Deroulante
    PageProduit.Naviguer vers le site amazon
    PageProduit.Rechercher le produit

