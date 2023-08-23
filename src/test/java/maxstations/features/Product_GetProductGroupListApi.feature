Feature: Product_GetProductGroupList Api

Scenario: Test Adjust GetProductGroupList
  Given url masterdataUrl
  Given path "/api/ProductGroup/GetProductGroupList"
  Given request
  """
{}
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