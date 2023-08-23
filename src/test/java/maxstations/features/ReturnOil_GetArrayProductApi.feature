Feature: ReturnOil_GetArrayProduct Api

Scenario: Test ReturnOil_GetArrayProduct
  Given url inventoryUrl
  Given path "/api/ReturnOil/GetArrayProduct"
  Given request
  """
[
    "000001",
    "000006",
    "000010",
    "000005"
]
  """
  When method POST
  Then status 200
  Then print response
