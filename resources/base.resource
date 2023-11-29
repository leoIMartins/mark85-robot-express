*** Settings ***

Library        libs/database.py
Library        Browser
Library        JSONLibrary

Resource       env.resource

Resource       pages/components/Header.resource
Resource       pages/components/Notice.resource
Resource       pages/components/Alert.resource

Resource       pages/SignupPage.resource
Resource       pages/LoginPage.resource
Resource       pages/TaskCreatePage.resource

*** Keywords ***
Start Session

    New Browser    browser=chromium    headless=False
    New Page       ${BASE_URL}

# Helpers
Get fixtures
    [Arguments]        ${file_name}        ${scenario}

    # ${EXECDIR} é uma variável de ambiente do Robot para capturar o diretório do projeto. Funciona igualmente ao digitar pwd no terminal
    ${data}    Load Json From File
    ...    ${EXECDIR}/resources/fixtures/${file_name}.json
    ...    encoding=utf-8
    
    [Return]    ${data}[${scenario}]