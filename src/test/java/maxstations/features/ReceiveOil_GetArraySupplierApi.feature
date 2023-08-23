Feature: ReceiveOil_GetArraySupplier Api

Scenario: Test ReceiveOil GetArraySupplier
  Given url inventoryUrl
  Given path "/api/ReceiveGas/GetArraySupplier"
  When method GET
  Then status 200
  Then print response

@ignore @report=false
Scenario: Test ignore
  Given url "http://abc.xyz"
  Given path "demo"
  When method GET
  Then status 404