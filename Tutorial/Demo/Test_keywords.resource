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

Filtteröi työpaikkoja
    [Documentation]    Valitsee Toimipiste ja Kategoria filttereistä argumenttien mukaiset vaihtoehdot
    ...    Toimipiste: Kaikki, Braunschweig, Espoo, Freelancing, Helsinki, Jyväskylä, Kajaani, Lappeenranta,
    ...    Madrid, Malaga, Munich, Oulu, Remote, Tallinn, Tampere, Turku
    ...    Kategoria: Kaikki, Agile, Architechture, Cloud, Cyber security, Data & AI, ICT Procurement Consulting,
    ...    Management Consulting, Other, Project Management, Recruitment & EB, Software Development, Testing & QA
    [Arguments]    ${toimipiste}    ${kategoria}
    IF    '${toimipiste}' != 'Kaikki' and '${kategoria}' != 'Kaikki'
        ${jobs}=    Get Text    //*[@id="found-posts"]
    END
    Sleep    1
    Click    //button[@aria-label="Toimipiste: ${toimipiste}"]
    Sleep    1
    Click    //button[@aria-label="Kategoria: ${kategoria}"]
    ${jobs_after}=    Get Text    //*[@id="found-posts"]
    IF    '${jobs}' != '${jobs_after}'
        Log    Filtteröinti onnistui    console=True
    ELSE
        Log    Filtteröinti ei muuttanut työpaikkojen määrää, tarkista!    console=True
    END

