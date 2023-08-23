Feature: ReturnOil_GetArrayBranch Api

Scenario: Test ReturnOil GetArrayBranch
  Given url inventoryUrl
  Given path "/api/ReturnOil/GetArrayBranch"
 
  When method GET
  Then status 200
  Then print response
