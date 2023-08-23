Feature: ReceiveOil_DetailList Api

Scenario: Test ReceiveOil DetailList
  Given url inventoryUrl
  Given path "/api/PurchaseOrder/DetailList"
  Given request
  """
    {
    "PoNumber": "5400535353",
    "CompCode": "O",
    "SystemDate": "2022-01-20T17:00:00.000Z"
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