Feature: Unusable_GetArrayReason Api

Scenario: Test Unusable GetArrayReason
  Given url inventoryUrl
  Given path "/api/Unusable/GetArrayReason"

  When method GET
  Then status 200
  Then print response
