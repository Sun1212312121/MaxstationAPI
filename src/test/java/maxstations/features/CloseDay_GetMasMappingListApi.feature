Feature: CloseDay_GetMasMappingList Api

Scenario: Test CloseDay GetMasMappingList
  Given url masterdataUrl
  Given path "/api/Other/GetMasMappingList"
  Given request
  """
{
    "Keyword": "PostDay"
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