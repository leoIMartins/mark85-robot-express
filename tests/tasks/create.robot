*** Settings ***
Documentation            Cenários de cadastro de tarefas

Resource        ../../resources/base.resource

*** Test Cases ***
Deve poder cadastrar uma nova tarefa

    ${data}        Get fixtures    tasks    create

    Log        ${data}