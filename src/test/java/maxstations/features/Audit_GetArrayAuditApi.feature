Feature: Audit_GetArrayAudit Api

Scenario: Test Audit GetArrayAudit
  Given url inventoryUrl
  Given path "/api/Audit/GetArrayAudit"
  Given request
  """
{
    "BrnCode": "35H",
    "CompCode": "B",
    "LocCode": "001",
    "FromDate": "2023-07-09",
    "ToDate": "2023-07-10",
    "Keyword": "",
    "Page": 1,
    "ItemsPerPage": 10
}
  """
  When method POST
  Then status 200
  Then print response

@ignore @report=false
Scenario: Test ignore
  Given url "http://abc.xyz"
  Given path "demo"
  When method GET
  Then status 404