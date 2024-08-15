Feature: Buscar livros

#  Comandos básicos GET
  Scenario: Buscar ids dos livros
    Given url 'https://restful-booker.herokuapp.com/booking'
    When method GET
    Then status 200

#  Comandos básicos POST e HEADER
  Scenario: Logar com sucesso
    Given url 'https://restful-booker.herokuapp.com/auth'
    And header Content-Type = 'application/json'
    And request '{"username" : "admin", "password" : "password123"}'
    When method POST
    Then status 200

#  PARAM
  Scenario: Buscar usuários do mesmo post
    Given url 'https://jsonplaceholder.typicode.com/comments'
    And header Accept = 'application/json'
    And param postId = 1
    When method GET
    Then status 200

#  Simulando erro para o report
  Scenario: ping
    Given url 'https://restful-booker.herokuapp.com/ping'
    When method GET
    Then status 202