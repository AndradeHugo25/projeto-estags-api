# Recursos
Feature: Qualquer

  Scenario: Exemplo set e remove
    * def jsonRequest = {"username" : "admin", "password" : "password123"}

    * print 'JSON ' + jsonRequest

    * remove jsonRequest.password

    * print 'JSON ' + jsonRequest

    * set jsonRequest.password = 'password123'

    * print 'JSON ' + jsonRequest
