Feature: Common API
  Scenario: Test Generate Token From Client ID
    Given url commonUrl
    Given path "/common/api/Auth/GenerateToken"
    Given header ProgramId = clientId
    And header Content-Length = 0
    And header Content-Type = "application/json"
    When method POST
    Then status 200
    Then print response