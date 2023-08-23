Feature: BranchTank_List Api

Scenario: Test BranchTank List
  Given url masterdataUrl
  Given path "/api/Branch/List"
  Given request
  """
{
    "BrnCode": "35H",
    "CompCode": "B",
    "LocCode": "001",
    "Keyword": "",
    "FromDate": null,
    "ToDate": null,
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