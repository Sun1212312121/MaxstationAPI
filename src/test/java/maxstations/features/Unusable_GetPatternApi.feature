Feature: Unusable_GetPattern Api

Scenario: Test Unusable GetPattern
  Given url masterdataUrl
  Given path "/api/Other/GetPattern"
  Given request
  """
{
    "docType": "Unusable"
}
  """
  When method POST
  Then status 200
  Then print response
