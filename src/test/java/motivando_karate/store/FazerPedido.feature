@FazerPedido
Feature: Fazer pedido de pet

  Background:
    * def urlBase = 'https://petstore.swagger.io/v2'

  Scenario: Fazer pedido de pet
    Given url urlBase
    And path '/store/order'
    And request {id: 2, petId: 0, quantity: 0, shipDate: "", status: "placed", complete: true}
    When method POST
    Then status 200
    And match response == {id: #number, petId: #number, quantity: #number, status: #string, complete: #boolean}