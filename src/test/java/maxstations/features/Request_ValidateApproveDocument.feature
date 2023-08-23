Feature: Request ValidateApproveDocument Api

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
    Given path "/api/Approve/ValidateApproveDocument"
    Given header Authorization = response
    Given request
    """
     {
            "DocNo": "2201####",
            "CompCode": "O",
            "BrnCode": "01L",
            "LocCode": "005",
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