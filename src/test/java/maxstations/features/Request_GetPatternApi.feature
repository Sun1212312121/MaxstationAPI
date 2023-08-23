Feature: Request GetPattern Api

  Scenario: Test get document from daily operation

    Given url commonUrl
    Given path "common/api/Auth/GenerateToken"
    Given header ProgramId = clientId
    And header Content-Length = 0
    And header Content-Type = "application/json"
    When method POST
    Then status 200
    Then print response

    Given url masterdataUrl
    Given path "/api/Other/GetPattern"
    Given header Authorization = response
    Given request
    """
      {
            "BrnCode": "01L",
            "CompCode": "O",
            "DocDate": "2022-01-21",
            "DocNo": "",
            "DocType": "Request",
            "LocCode": "005",
            "DocTypeId": ""

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