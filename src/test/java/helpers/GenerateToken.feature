Feature: Generate Token
  Scenario: Generate Client Token
    Given url commonUrl
    Given path '/common/api/Auth/GenerateToken'
    Given header ProgramId = clientId
    And header Content-Type = "application/json"
    And header Content-Length = 0
    When method POST
    Then status 200
    Then print response
    * def accesstoken = response