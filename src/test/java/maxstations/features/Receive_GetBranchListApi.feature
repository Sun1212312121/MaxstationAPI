Feature: Receive_GetBranchList Api

Scenario: Test Receive GetBranchList
  Given url masterdataUrl
  Given path "/api/Other/GetPattern"
  Given request
  """
{
    "BrnCode": "003",
    "CompCode": "B",
    "DocDate": "2023-06-25",
    "DocNo": "",
    "DocType": "Receive",
    "LocCode": "001"
}
  """
  When method POST
  Then status 200
  Then print response
