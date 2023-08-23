Feature: CashSale FindById API

  Scenario: Test get document from daily operation
    Given url masterdataUrl
    Given path "/api/Product/FindById"
    Given request
    """
      {
        "PdId": "000001"
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