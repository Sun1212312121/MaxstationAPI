Feature: Unit_List Api

Scenario: Test Unit List
  Given url masterdataUrl
  Given path "/api/Unit/List"
  Given request
  """
{
    "Keyword": "",
    "Page": 1,
    "ItemsPerPage": 10
}
  """
  When method POST
  Then status 200
  Then print response
