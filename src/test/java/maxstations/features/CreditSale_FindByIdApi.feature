Feature: CreditSale_FindById API

  Scenario: test CreditSale FindById API
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