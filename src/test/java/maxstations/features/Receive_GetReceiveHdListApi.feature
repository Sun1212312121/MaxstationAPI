Feature: Receive_GetReceiveHdList Api

Scenario: Test Receive GetReceiveHdList
  Given url financeUrl
  Given path "/api/Receive/GetReceiveHdList"
  Given request
  """
    {
        "BrnCode": "003",
        "CompCode": "B",
        "LocCode": "001",
        "ToDate": "2023-06-25",
        "Keyword": null,
        "Page": 1,
        "ItemsPerPage": 10,
        "FromDate": "2023-06-24"
    }
  """
  When method POST
  Then status 200
  Then print response
