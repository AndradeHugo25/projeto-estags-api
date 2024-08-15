#  PATH - Variável com urlBase no background
Feature: Buscar livros

  Background:
    * def urlBase = 'https://restful-booker.herokuapp.com'

  Scenario: Buscar ids dos livros
    Given url urlBase
    And path '/booking'
    When method GET
    Then status 200

  Scenario: Logar com sucesso
    Given url urlBase
    And path '/auth'
    And header Content-Type = 'application/json'
    And request '{"username" : "admin", "password" : "password123"}'
    When method POST
    Then status 200