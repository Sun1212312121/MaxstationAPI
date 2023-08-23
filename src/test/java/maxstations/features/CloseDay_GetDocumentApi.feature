Feature: CloseDay_GetDocument Api

Scenario: test CloseDay GetDocument
  Given url postDayUrl
  Given path "/api/PostDay/GetDocument"
  Given request
    """
      {
        "BrnCode": "01L",
        "CompCode": "O",
        "LocCode": "005",
        "DocDate": "2023-06-25",
        "SystemDate": "2023-06-25"
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