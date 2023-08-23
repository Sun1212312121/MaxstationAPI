Feature: TransferIn_SearchTranIn Api

Scenario: Test TransferIn SearchTranIn
  Given url inventoryUrl
  Given path "/api/TransferIn/SearchTranIn"
  Given request
  """
    {
    "compCode": "O",
    "brnCode": "01L",
    "locCode": "005",
    "guid": "",
    "fromDate": "2022-01-20",
    "toDate": "2022-01-21",
    "skip": 0,
    "take": 10,
    "keyword": ""
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