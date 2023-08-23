Feature: Receive_GetMasMapping Api

Scenario: Test Receive GetMasMapping
  Given url financeUrl
  Given path "/api/Receive/GetMasMapping"

  When method GET
  Then status 200
  Then print response
