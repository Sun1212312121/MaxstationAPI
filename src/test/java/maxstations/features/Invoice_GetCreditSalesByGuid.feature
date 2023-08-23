Feature: GetCreditSalesByGuid Api

  Scenario: Test get document from daily operation
    Given url saleUrl
    Given path "/api/Invoice/GetCreditSalesByGuid/2da39d11-a540-4ff9-99d7-7d58777ab34d"
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