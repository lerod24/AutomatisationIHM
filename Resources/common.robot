*** Settings ***
Library  SeleniumLibrary
Resource  variables.robot

*** Keywords ***
begin web test
    Open Browser  about:blank  ${browser}
    Maximize Browser Window

End web test
    Close Browser