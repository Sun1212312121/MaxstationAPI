Feature: CashSale GetCashSaleHdListApi API

  Scenario: Test get document from daily operation
    Given url saleUrl
    Given path "/api/CashSale/GetCashSaleHdList"
    Given request
    """
      {
          "BrnCode": "35H",
          "CompCode": "B",
          "FromDate": "2023-06-23",
          "ToDate": "2023-06-24",
          "Keyword": "",
          "Page": 1,
          "ItemsPerPage": 10,
          "SysDate": "2023-06-24"
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