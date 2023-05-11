*** Settings ***
Library   Browser

*** Test Cases ***
Click CSS Selector On Page
   [Documentation]    Example of changing front page language to Finnish with CSS selector and
   ...                clicking menu on the right side of web page
    New Browser     headless=False
    New Context
    New Page        http://gofore.com
    # Clicking Finnish language with CSS selector
    Click           div.nav-container.nav-dark > header > ul > li.lang-item.lang-item-13.lang-item-fi > a
    Get Text        h1    contains    Eettisen digimaailman pioneeri
    # Clicking menu button with CSS selector
    Click           \#nav-toggle
    #Click           xpath=//button[@id="nav-toggle"]    # Same with xpath selector
    #Click           id=nav-toggle                       # Same with id selector
    # Sleep used only for demo purpose
    Sleep           2s

# Test CSS Selectors
    # [Documentation]    Try locating and clicking elements at gofore.com with CSS selectors
    # ...                Copying CSS selector: 
    # ...                1. Right click element -> Inspect 
    # ...                2. Right click element's part of HTML code
    # ...                3. Copy -> Copy selector (Chrome and Edge)
    # ...                In Firefox: Copy > CSS Selector
    # ...                In Safari:  Copy > Selector Path
    # New Browser        headless=False
    # New Context
    # New Page           http://gofore.com
    # Click              # Put your CSS selector here
    # #  Your content here if you want to try more