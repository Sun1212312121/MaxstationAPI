Feature: TransferIn_GetTranferInHdByGuid Api

Scenario: Test TransferIn GetTranferInHdByGuid
  Given url inventoryUrl
  Given path "/api/TransferIn/GetTranferInHdByGuid/da086171-5c90-4eda-93a2-6a15f9b2b099"

  When method GET
  Then status 200
  Then print response

@ignore @report=false
Scenario: Test ignore
  Given url "http://abc.xyz"
  Given path "demo"
  When method GET
  Then status 404