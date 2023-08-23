Feature: Receive_GetReceiveGasList Api

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
    Given path "/api/ReceiveGas/GetSupplier/01-%E0%B8%AD210530/O"
    Given header Authorization = response
    Given request
    """
    {
            
    }
    """
    When method GET
    Then status 200
    Then print response

  @ignore @report=false
  Scenario: Test ignore
    Given url "http://abc.xyz"
    Given path "demo"
    When method GET
    Then status 404