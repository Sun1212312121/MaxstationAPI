Feature: GetProductReasonList Api

Scenario: Test get document from daily operation
  Given url masterdataUrl
  Given path "/api/Product/GetProductReasonList"
  Given request
  """
  
{
    "CompCode": "O",
    "LocCode": "005",
    "BrnCode": "01L",
    "ReasonId": "50",
    "ReasonGroup": "Withdraw",
    "Keyword": "",
    "SystemDate": "2022-01-21"
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