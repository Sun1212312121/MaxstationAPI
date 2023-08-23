Feature: Customer_GetCustomerList2 Api

Scenario: Test Customer GetCustomerList2
  Given url masterdataUrl
  Given path "/api/Customer/GetCustomerList2"
  Given request
  """
{
    "CompCode": "B",
    "BrnCode": "35H",
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