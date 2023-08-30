@Get
Feature: Prueba API Users GET

  Background:

  @get1
  Scenario: Simple Get User
    Given url 'https://reqres.in/'
    And path '/api/users/2'
    When method get
    Then status 200

  @get2
  Scenario: Simple Get User 2
    Given url 'https://reqres.in/'
    And path 'api','users','3'
    When method get
    Then status 200
    
  @get3
  Scenario Outline: Get con path variable
    Given url 'https://reqres.in/'
    And path '/api/users/'+'<id>'
    When method get
    Then status 200
    And print response
    * def correo = response.data.email
    * print correo
    Examples:
      | id |
      | 1  |
      | 4  |
      | 5  |