Feature: Daily Operation Api

  Scenario: Test get document from daily operation
    Given url dailyoperationUrl
    Given path "/api/Meter/GetDocument"
    Given request
    """
      {
         "compCode": "B",
         "brnCode": "811",
         "docDate": "2021-10-09",
         "periodNo": 1
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