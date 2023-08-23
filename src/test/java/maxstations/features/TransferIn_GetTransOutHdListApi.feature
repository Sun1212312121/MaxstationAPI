Feature: TransferIn_GetTransOutHdList Api

Scenario: Test TransferIn GetTransOutHdList
  Given url inventoryUrl
  Given path "/api/TransferIn/GetTransOutHdList"
  Given request
  """
    {
    "keyword": "",
    "compCode": "O",
    "brnCodeTo": "01L",
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