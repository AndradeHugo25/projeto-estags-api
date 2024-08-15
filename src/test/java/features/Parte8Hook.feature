# Call
Feature: Hook

    Scenario: Configurar sistema
        * def urlBase = 'https://jsonplaceholder.typicode.com/comments'
        * def util = Java.type('core.Formatador')
        * def valor = util.formatarValor('2.55')
        * print 'LOG: Configurando sistema...'
