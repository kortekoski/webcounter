*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser Session
Test Setup  Go To  ${HOME_URL}

*** Test Cases ***
When counter has a nonzero value and it is reset the value becomes zero
    Click Button  Paina
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa