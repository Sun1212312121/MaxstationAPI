Feature: ReturnOil_GetArrayReturnOilHeader Api

Scenario: Test ReturnOil GetArrayReturnOilHeader
  Given url inventoryUrl
  Given path "/api/ReturnOil/GetArrayReturnOilHeader"
  Given request
  """
{
    "BrnCode": "35H",
    "CompCode": "B",
    "LocCode": "001",
    "Keyword": "",
    "FromDate": "2023-07-09",
    "ToDate": "2023-07-10",
    "Page": 1,
    "ItemsPerPage": 10
}
  """
  When method POST
  Then status 200
  Then print response
