# Call
Feature: Busca

  Background:
    * def config = callonce read('classpath:src/test/java/features/Parte8Hook.feature')

  Scenario: Buscar livros com valor específico
    Given url config.urlBase
    And header Accept = 'application/json'
    And param postId = config.valor
    When method GET
    Then status 200