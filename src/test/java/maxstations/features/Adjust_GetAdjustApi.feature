Feature: Adjust_GetAdjust Api

Scenario: Test Adjust GetAdjust
  Given url inventoryUrl
  Given path "/api/Adjust/GetAdjust/08f32bb5-9a55-4742-9502-8353c2a49582"
  When method GET
  Then status 200
  Then print response

@ignore @report=false
Scenario: Test ignore
  Given url "http://abc.xyz"
  Given path "demo"
  When method GET
  Then status 404