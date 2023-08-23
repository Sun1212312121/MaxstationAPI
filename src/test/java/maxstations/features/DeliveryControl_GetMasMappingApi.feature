Feature: DeliveryControl_GetMasMapping Api

Scenario: Test DeliveryControl GetMasMapping
  Given url inventoryUrl
  Given path "/api/DeliveryControl/GetMasMapping"

  When method GET
  Then status 200
  Then print response

@ignore @report=false
Scenario: Test ignore
  Given url "http://abc.xyz"
  Given path "demo"
  When method GET
  Then status 404