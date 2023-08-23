Feature: SupplierReturn_GetArrayProduct Api

Scenario: Test SupplierReturn GetArrayProduct
  Given url inventoryUrl
  Given path "/api/ReturnOil/GetArrayProduct"
  Given request
  """
[
    "08914",
    "08763"
]
  """
  When method POST
  Then status 200
  Then print response
