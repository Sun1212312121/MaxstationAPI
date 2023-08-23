Feature: Expense_List Api

Scenario: Test Expense List
  Given url financeUrl
  Given path "/api/Expense/List"
  Given request
  """
{
    "BrnCode": "003",
    "CompCode": "B",
    "FromDate": "2023-06-24",
    "ToDate": "2023-06-25",
    "Keyword": "",
    "Page": 1,
    "ItemsPerPage": 10
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