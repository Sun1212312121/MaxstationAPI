Feature: Receive_GetCustomers Api

Scenario: Test Receive GetCustomers
  Given url masterdataUrl
  Given path "/api/Customer/GetCustomers"
  Given request
  """
{
    "Keyword": "",
    "Page": 1,
    "ItemsPerPage": 10,
    "ParentName": ""
}
  """
  When method POST
  Then status 200
  Then print response
