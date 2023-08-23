Feature: TransferOut_GetMasControl Api

Scenario: Test TransferOut GetMasControl
  Given url masterdataUrl
  Given path "/api/MasControl/GetMasControl"
  Given request
  """
    {
    "CompCode": "B",
    "BrnCode": "35H",
    "ctrlCode": "WDATE"
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