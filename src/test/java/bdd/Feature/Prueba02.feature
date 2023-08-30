@Post
Feature: Prueba API Users POST

  Background:
    Given url 'https://reqres.in/'

  @post1
  Scenario: POST User
    Given path '/api/users'
    And request
      """{
      "name": "Juancito",
      "job": "QA"
      }"""
    When  method post
    Then status 201
    * print response


  @post2
  Scenario: POST User 2
    * def body =
    """
  {
  "name": "Luisito",
  "job": "QA Leader"
  }
  """
    Given path '/api/users'
    And request body
    When  method post
    Then status 201
    * print response