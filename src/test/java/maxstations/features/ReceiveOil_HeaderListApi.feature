Feature: ReceiveOil_HeaderList Api

Scenario: Test ReceiveOil HeaderList
  Given url inventoryUrl
  Given path "/api/PurchaseOrder/HeaderList"
  Given request
  """
    {
        "BranchCode": "01L",
        "CompCode": "O",
        "KeyWord": "",
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