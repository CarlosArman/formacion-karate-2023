Feature: PUT - UPDATE BOOK WITH UNIQUE TOKEN

  Background: url, archivos y varaibles
    Given url urlBooking
    * def body = read('classpath:bdd/req/body_actulizarlibro.json')
    * def getToken = call read('classpath:bdd/Feature/CreateTokenO.feature')

  @PruebaObtenerToken
  Scenario Outline: PUT Actulizar libro con datos - Ok
    Given path 'booking','<id>'
    And header Accept = '*/*'
    And header Content-Type = 'application/json'
    And header Cookie = getToken.sToken
    And request body
    When method PUT
    Then status 200
    * print response
    Examples:
      | id |
      | 11 |

  @PruebaObtenerToken
  Scenario Outline: PUT Actulizar libro con datos - Ok
    Given path 'booking','<id>'
    And header Accept = '*/*'
    And header Content-Type = 'application/json'
    And header Cookie = getToken.sToken
    And request body
    When method PUT
    Then status 200
    * print response
    Examples:
      | id |
      | 20 |