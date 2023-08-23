Feature: Withdraw_GetWithdrawList API

  Scenario: test Withdraw GetWithdrawList API
    Given url inventoryUrl
    Given path "/api/Withdraw/GetWithdrawList"
    Given request
      """
        {
          "BrnCode": "01L",
          "CompCode": "O",
          "LocCode": "005",
          "FromDate": "2021-01-04",
          "ToDate": "2023-12-15",
          "Keyword": null,
          "Page": 1,
          "ItemsPerPage": 10
      }
      """
    When method POST
    Then status 200
    Then print response