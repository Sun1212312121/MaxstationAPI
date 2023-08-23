Feature: Supplier_GetSupplierList Api

Scenario: Supplier GetSupplierList
  Given url masterdataUrl
  Given path "/api/Supplier/GetSupplierList"
  Given request
  """
{
    "KeyWord": "",
    "ItemPerPage": 10,
    "PageIndex": 1
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