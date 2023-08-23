Feature: AdjustRequest_GetAdjustRequest Api

Scenario: Test AdjustRequest GetAdjustRequest
  Given url inventoryUrl
  Given path "/api/AdjustRequest/GetAdjustRequest/c63bb8c4-870d-4720-b7d3-862113673bb6"

  When method GET
  Then status 200
  Then print response

@ignore @report=false
Scenario: Test ignore
  Given url "http://abc.xyz"
  Given path "demo"
  When method GET
  Then status 404