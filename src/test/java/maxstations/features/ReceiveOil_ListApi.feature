Feature: ReceiveOil_List Api

Scenario: Test ReceiveOil List
  Given url inventoryUrl
  Given path "/api/ReceiveOil/List"
  Given request
  """
    {
        "BrnCode": "01L",
        "CompCode": "O",
        "DocType": "Oil",
        "FromDate": "2020-01-05",
        "ItemsPerPage": 10,
        "Keyword": "",
        "LocCode": "005",
        "Page": 1,
        "ToDate": "2023-07-20"
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