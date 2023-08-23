Feature: DeliveryControl_GetDeliveryControl Api

Scenario: Test DeliveryControl GetDeliveryControl
  Given url inventoryUrl
  Given path "/api/DeliveryControl/GetDeliveryControl/c817db14-db14-4720-b782-0f9db0f66a45"

  When method GET
  Then status 200
  Then print response

@ignore @report=false
Scenario: Test ignore
  Given url "http://abc.xyz"
  Given path "demo"
  When method GET
  Then status 404