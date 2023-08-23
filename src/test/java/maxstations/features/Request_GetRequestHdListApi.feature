Feature: Request GetRequestHdList Api

  Scenario: Test get document from daily operation

    Given url commonUrl
    Given path "common/api/Auth/GenerateToken"
    Given header ProgramId = clientId
    And header Content-Length = 0
    And header Content-Type = "application/json"
    When method POST
    Then status 200
    Then print response

    Given url inventoryUrl
    Given path "/api/Request/GetRequestHdList"
    Given header Authorization = response
    Given request
    """
      {
            "BrnCode": "01L",
            "CompCode": "O",
            "LocCode": "005",
            "ToDate": "2023-12-13T17:00:00.000Z",
            "Keyword": null,
            "Skip": 1,
            "Take": 10,
            "FromDate": "2020-01-04T17:00:00.000Z"

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