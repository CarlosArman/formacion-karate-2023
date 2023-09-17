
Feature: GET Token Coockie

  Background: url y archivos o variables
    Given url urlBooking
    * def user = 'admin'
    * def pass = 'password123'


  @GetToken1
  Scenario: POST Get token - Ok
    Given path 'auth'
    And header Content-Type = 'application/json'
    And request
           """
{
    "username" : "admin",
    "password" : "password123"
}
      """
      When method post
      Then status 200
      * print response

  @GetToken2
  Scenario: POST Get token utilizando variables - Ok
    Given path 'auth'
    And header Content-Type = 'application/json'
    And request
           """
{
    "username" : "#(user)",
    "password" : "#(pass)"
}
      """
    When method post
    Then status 200
    * print response


      
 