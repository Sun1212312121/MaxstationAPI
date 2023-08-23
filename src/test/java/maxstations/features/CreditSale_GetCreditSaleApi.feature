Feature: CreditSale_GetCreditSale API

  Scenario: test CreditSale GetCreditSale API
    Given url saleUrl
    Given path "/api/CreditSale/GetCreditSale"
    Given request
      """
        {
            "Guid": "191427dd-03da-4f16-b112-c346714e259f"
        }
      """
    When method POST
    Then status 200
    Then print response