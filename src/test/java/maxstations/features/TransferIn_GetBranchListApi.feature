Feature: TransferIn_GetBranchList Api

Scenario: Test TransferIn GetBranchList
  Given url masterdataUrl
  Given path "/api/Other/GetPattern"
  Given request
  """
    {
    "CompCode": "O"
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