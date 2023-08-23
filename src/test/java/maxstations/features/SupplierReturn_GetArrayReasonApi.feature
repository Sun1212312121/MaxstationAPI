Feature: SupplierReturn_GetArrayReason Api

Scenario: Test SupplierReturn GetArrayReason
  Given url inventoryUrl
  Given path "/api/SupplierReturn/GetArrayReason"

  When method GET
  Then status 200
  Then print response
