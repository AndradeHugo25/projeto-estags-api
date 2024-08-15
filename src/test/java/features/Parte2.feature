Feature: Busca

  Scenario: Buscar usuários do mesmo post
    * def nomeVar = 1
    Given url 'https://jsonplaceholder.typicode.com/comments'
    And header Accept = 'application/json'
    And param postId = nomeVar
    When method GET
    Then status 200