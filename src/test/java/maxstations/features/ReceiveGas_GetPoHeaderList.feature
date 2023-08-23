Feature: Receive_GetReceiveGasList Api

  Scenario: Test get document from daily operation
    Given url inventoryUrl
    Given path "/api/ReceiveGas/GetPoHeaderList"
    Given request
    """
    {
            "KeyWord": "",
            "CompCode": "O",
            "SystemDate": "2022-01-21",
            "BrnCode": "01L"
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