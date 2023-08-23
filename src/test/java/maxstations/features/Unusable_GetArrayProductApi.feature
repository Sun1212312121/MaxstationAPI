Feature: Unusable_GetArrayProduct Api

Scenario: Test Unusable GetArrayProduct
  Given url inventoryUrl
  Given path "/api/Unusable/GetArrayProduct"

  When method GET
  Then status 200
  Then print response
