Feature: ReturnOil_GetArrayReason Api

Scenario: Test ReturnOil GetArrayReason
  Given url inventoryUrl
  Given path "/api/ReturnOil/GetArrayReason"
 
  When method GET
  Then status 200
  Then print response
