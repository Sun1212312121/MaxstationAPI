Feature: Withdraw_GetReasons API

  Scenario: test Withdraw GetReasons
    Given url inventoryUrl
    Given path "/api/Withdraw/GetReasons"
    When method GET
    Then status 200
    Then print response