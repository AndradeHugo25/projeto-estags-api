# Integração com Java
Feature: Busca

  Background:
    * def util = Java.type('core.Formatador')
    * def valor = util.formatarValor('1.55')

  Scenario: Buscar livros com valor específico
    Given url 'https://jsonplaceholder.typicode.com/comments'
    And header Accept = 'application/json'
    And param postId = valor
    When method GET
    Then status 200