Feature: CashSale GetProductUnitList API

  Scenario: Test get document from daily operation
    Given url masterdataUrl
    Given path "/api/ProductUnit/GetProductUnitList"
    Given request
    """
      {
          "PDBarcodeList": "000001,000002"
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