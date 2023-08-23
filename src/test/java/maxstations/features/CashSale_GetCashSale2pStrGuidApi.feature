Feature: CashSale GetCashSale2pStrGuid API

  Scenario: Test get document from daily operation
    Given url commonUrl
    Given path "common/api/Auth/GenerateToken"
    Given header ProgramId = clientId
    And header Content-Length = 0
    And header Content-Type = "application/json"
    When method POST
    Then status 200
    Then print response

    Given url saleUrl
    Given path "/api/CashSale/GetCashSale2"
    And param pStrGuid = '1eeef8f8-8a14-4a8f-b379-7d0af3950e9d'
    Given header Authorization = response
    Given request
    """
     
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