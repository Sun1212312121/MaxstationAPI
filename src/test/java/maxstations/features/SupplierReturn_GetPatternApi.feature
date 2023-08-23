Feature: SupplierReturn_GetPattern Api

Scenario: Test SupplierReturn GetPattern
  Given url masterdataUrl
  Given path "/api/Other/GetPattern"
  Given request
  """
{
    "docType": "ReturnSup"
}
  """
  When method POST
  Then status 200
  Then print response
