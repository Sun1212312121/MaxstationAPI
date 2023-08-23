Feature: Audit_GetAudit Api

Scenario: Test Audit GetAudit
  Given url inventoryUrl
  Given path "/api/Audit/GetAudit/a1e85def-3ab2-4c86-bf12-c79c000f0aa8"

  When method GET
  Then status 200
  Then print response

@ignore @report=false
Scenario: Test ignore
  Given url "http://abc.xyz"
  Given path "demo"
  When method GET
  Then status 404