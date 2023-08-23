Feature: TransferOut_GetRequestHdList Api

Scenario: Test TransferOut GetRequestHdList
  Given url inventoryUrl
  Given path "/api/TransferOut/GetRequestHdList"
  Given request
  """
{
    "keyword": "",
    "docTypeId": "",
    "compCode": "O",
    "brnCodeFrom": "01L",
    "docStatus": "Ready",
    "docNo": "",
    "sysDate": "2022-01-21"
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