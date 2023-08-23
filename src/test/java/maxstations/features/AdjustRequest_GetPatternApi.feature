Feature: AdjustRequest_GetPattern Api

Scenario: Test AdjustRequest GetPattern
  Given url masterdataUrl
  Given path "/api/Other/GetPattern"
  Given request
  """
{
    "BrnCode": "003",
    "CompCode": "B",
    "LocCode": "001",
    "DocDate": "2023-06-26",
    "DocNo": "",
    "DocType": "AdjustRequest"
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