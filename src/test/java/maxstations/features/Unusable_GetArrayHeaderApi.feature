Feature: Unusable_GetArrayHeader Api

Scenario: Test Unusable GetArrayHeader
  Given url inventoryUrl
  Given path "/api/Unusable/GetArrayHeader"
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
