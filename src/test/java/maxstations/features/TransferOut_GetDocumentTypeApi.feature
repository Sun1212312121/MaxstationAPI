Feature: TransferOut_GetDocumentType Api

Scenario: Test TransferOut GetDocumentType
  Given url masterdataUrl
  Given path "/api/DocumentType/GetDocumentType"
  Given request
  """
    {
    "DocType": "Request"
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