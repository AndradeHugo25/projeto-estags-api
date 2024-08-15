@BuscarPets
Feature: Buscar pets

  Background:
    * def urlBase = 'https://petstore.swagger.io/v2'

  Scenario: Buscar pets
    Given url urlBase
    And path '/pet/findByStatus'
    And param status = 'sold'
    When method GET
    Then status 200
    And match each response contains {"id": #number, "name": "#ignore", "photoUrls": "#ignore", "tags": "#notnull", "status": "sold"}

    * print response[0].name
