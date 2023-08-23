Feature: Receive_GetProductServiceList Api

Scenario: Test Receive GetProductServiceList
  Given url masterdataUrl
  Given path "/api/Product/GetProductServiceList"
  Given request
  """
{
    "CompCode": "B",
    "BrnCode": "003",
    "LocCode": "001",
    "Keyword": null,
    "DocumentTypeID": "006"
}
  """
  When method POST
  Then status 200
  Then print response
