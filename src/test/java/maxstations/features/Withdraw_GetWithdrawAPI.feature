Feature: Withdraw_GetWithdraw API

  Scenario: test Withdraw GetWithdrawAPI
    Given url inventoryUrl
    Given path "/api/Withdraw/GetWithdraw/0c8a3e59-1a75-4e0e-8974-5a2c39333dd2/O/01L/005"
    When method GET
    Then status 200
    Then print response