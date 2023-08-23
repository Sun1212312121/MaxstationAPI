Feature: Receive_GetReceiveGasList Api

  Scenario: Test get document from daily operation
    Given url masterdataUrl
    Given path "/api/Other/GetPattern"
    Given request
    """
     {
            "BrnCode": "003",
            "CompCode": "B",
            "DocType": "Gas",
            "FromDate": "2023-06-24",
            "ItemsPerPage": 10,
            "Keyword": "",
            "LocCode": "001",
            "Page": 1,
            "ToDate": "2023-06-25"
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