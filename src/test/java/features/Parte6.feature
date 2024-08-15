# Payloads e Leitura de arquivos
Feature: Login

  Background:
    Given url 'https://restful-booker.herokuapp.com'

  Scenario: Logar com sucesso
    * def jsonRequest = read('classpath:src/main/java/payloads/requests/LoginRequest.json')
    * def jsonResponse = read('classpath:src/main/java/payloads/responses/LoginResponse.json')

    Given path '/auth'
    And header Content-Type = 'application/json'
    And request jsonRequest
    When method POST
    Then status 200
    And match response == jsonResponse

  Scenario: Buscar ids dos livros
    And path '/booking'
    When method GET
    Then status 200