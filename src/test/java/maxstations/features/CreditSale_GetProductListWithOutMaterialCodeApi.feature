Feature: CreditSale_GetProductListWithOutMaterialCode API

  Scenario: test CreditSale GetProductListWithOutMaterialCode API
    Given url saleUrl
    Given path "/api/CreditSale/GetProductListWithOutMaterialCode"
    Given request
      """
        {
            "CompCode": "B",
            "LocCode": "001",
            "BrnCode": "003",
            "PDBarcodeList": "000002,000001",
            "SystemDate": "2023-06-25"
        }
      """
    When method POST
    Then status 200
    Then print response