Feature: SupplierReturn_GetArrayBranch Api

Scenario: Test SupplierReturn GetArrayBranch
  Given url inventoryUrl
  Given path "/api/SupplierReturn/GetArrayBranch"

  When method GET
  Then status 200
  Then print response
