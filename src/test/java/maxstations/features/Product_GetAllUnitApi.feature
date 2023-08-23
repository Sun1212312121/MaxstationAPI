Feature: Product_GetAllUnit Api

Scenario: Test Adjust GetAllUnit
  Given url masterdataUrl
  Given path "/api/Product/GetAllUnit"

  When method GET
  Then status 200
  Then print response

@ignore @report=false
Scenario: Test ignore
  Given url "http://abc.xyz"
  Given path "demo"
  When method GET
  Then status 404