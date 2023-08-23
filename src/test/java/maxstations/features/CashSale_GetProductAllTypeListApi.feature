Feature: CashSale GetProductAllTypeList API

  Scenario: Test get document from daily operation
    Given url masterdataUrl
    Given path "/api/Product/GetProductAllTypeList"
    Given request
    """
      {
           "CompCode": "B",
          "LocCode": "001",
          "BrnCode": "35H",
          "Keyword": "",
          "SystemDate": "2023-06-24"

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