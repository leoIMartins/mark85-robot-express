*** Settings ***
Documentation

Resource        ../resources/base.resource

Test Setup        Start Session
Test Teardown     Take Screenshot

*** Test Cases ***
Deve poder logar com um usuário pré-cadastrado

    ${user}    Create Dictionary
    ...    name=Leonardo Martins
    ...    email=leonardo@hotmail.com
    ...    password=pwd123

    Submit login form    ${user}

    Sleep    5