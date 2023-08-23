Feature: ReceiveOil_GetSupplier Api

Scenario: Test ReceiveOil GetSupplier
  Given url inventoryUrl
  Given path "/api/ReceiveGas/GetSupplier/01-%E0%B8%9E210180/O"
  
  When method GET
  Then status 200
  Then print response

@ignore @report=false
Scenario: Test ignore
  Given url "http://abc.xyz"
  Given path "demo"
  When method GET
  Then status 404