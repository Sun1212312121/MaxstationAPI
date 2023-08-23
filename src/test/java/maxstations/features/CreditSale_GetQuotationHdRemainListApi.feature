Feature: CreditSale_GetQuotationHdRemainList API

  Scenario: test CreditSale GetQuotationHdRemainList API
    Given url saleUrl
    Given path "/api/Quotation/GetQuotationHdRemainList"
    Given request
      """
        {
            "BrnCode": "003",
            "CompCode": "B",
            "DocDate": "2023-06-25",
            "LocCode": "001",
            "CustCode": "000001",
            "Keyword": null
        }
      """
    When method POST
    Then status 200
    Then print response