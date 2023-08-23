Feature: AdjustRequest_GetReasonAdjusts Api

Scenario: Test AdjustRequest GetReasonAdjusts
  Given url inventoryUrl
  Given path "/api/Adjust/GetReasonAdjusts"

  When method GET
  Then status 200
  Then print response

@ignore @report=false
Scenario: Test ignore
  Given url "http://abc.xyz"
  Given path "demo"
  When method GET
  Then status 404