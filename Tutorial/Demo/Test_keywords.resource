*** Settings ***
Library    Browser



*** Keywords ***
Navigoi sivulle ${nettisivu}
    [Documentation]    Esim suite setupissa annettava avainsana, jolla avataan selain ja siirrytään haluttuun nettisivuun
    New Browser    headless=False
    New Context
    New Page    ${nettisivu}

Vaihda Kieli
    [Documentation]    Kielen vaihtaminen gofore.com sivustolla. Arguments: suomi, englanti, saksa
    [Arguments]    ${kieli}
    Get Element Count    //ul[@class="language-selector hide-on-mobile-nav-view"]/descendant::a    ==    3
    IF    '${kieli}' == 'suomi'    Click    xpath=//ul[@class="language-selector hide-on-mobile-nav-view"]/descendant::a[@lang="fi"]

Siirry työpaikkoihin
    [Documentation]    Klikkaa työpaikat välilehdelle ja avaa avoimet työpaikat ja valitsee tarkistaa, että ollaan oikealla sivulla
    Click    //li[@id="menu-item-15841"]
    Click    //a[@class="button button-ghost"][contains(text(), "Avoimet työpaikat")]
    Get Title    ==    Työpaikat - Gofore

