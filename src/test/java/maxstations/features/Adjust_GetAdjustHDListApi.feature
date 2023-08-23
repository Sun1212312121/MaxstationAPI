Feature: Adjust_GetAdjustHDList Api

Scenario: Test Adjust GetAdjustHDList
  Given url inventoryUrl
  Given path "/api/Adjust/GetAdjustHDList"
  Given request
  """
{
    "BrnCode": "003",
    "CompCode": "B",
    "LocCode": "001",
    "FromDate": "2023-06-25",
    "ToDate": "2023-06-26",
    "Keyword": null,
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