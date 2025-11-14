*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser Session
Test Setup  Go To  ${HOME_URL}

*** Test Cases ***
At start the counter is zero
    Title Should Be  Laskuri
    Page Should Contain  nappia painettu 0 kertaa

When button pressed twice the counter is two
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu 2 kertaa