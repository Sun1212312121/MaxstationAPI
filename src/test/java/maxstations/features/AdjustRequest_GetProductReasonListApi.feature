Feature: AdjustRequest_GetProductReasonList Api

Scenario: Test AdjustRequest GetProductReasonList
  Given url masterdataUrl
  Given path "/api/Product/GetProductReasonList"
  Given request
  """
{
    "CompCode": "B",
    "LocCode": "001",
    "BrnCode": "003",
    "ReasonId": "02",
    "ReasonGroup": "Adjust",
    "Keyword": "",
    "SystemDate": "2023-06-26"
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