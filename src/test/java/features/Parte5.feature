# Validações
Feature: Buscar livros

  Background:
    Given url 'https://restful-booker.herokuapp.com'

  Scenario: Buscar ids dos livros
    And path '/booking'
    When method GET
    Then status 200

  Scenario: Logar com sucesso
    Given path '/auth'
    And header Content-Type = 'application/json'
    And request '{"username" : "admin", "password" : "password123"}'
    When method POST
    Then status 200
    And match response == {token:#string}