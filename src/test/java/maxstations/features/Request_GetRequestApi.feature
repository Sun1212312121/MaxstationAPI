Feature: Request GetRequest Api

  Scenario: Test get document from daily operation

    Given url commonUrl
    Given path "common/api/Auth/GenerateToken"
    Given header ProgramId = clientId
    And header Content-Length = 0
    And header Content-Type = "application/json"
    When method POST
    Then status 200
    Then print response

    Given url inventoryUrl
    Given path "/api/Request/GetRequest"
    Given header Authorization = response
    Given request
    """
     {
         "Guid": "ad64ccfd-ab58-4a34-9fb4-ecb12ce14438"
         
     }
    """
    When method POST
    Then status 200
    Then print response

  @ignore @report=false
  Scenario: Test ignore
    Given url "http://abc.xyz"
    Given path "demo"
    When method GET
    Then status 404