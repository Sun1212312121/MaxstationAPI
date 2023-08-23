Feature: CreditSale_GetCustomerCar API

  Scenario: test CreditSale GetCustomerCar API
    Given url saleUrl
    Given path "/api/CreditSale/GetCustomerCar"
    Given param pStrCusCode = "000001"
    When method GET
    Then status 200
    Then print response