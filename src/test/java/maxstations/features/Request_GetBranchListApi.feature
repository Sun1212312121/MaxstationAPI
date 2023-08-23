Feature: Request_GetBranchList Api

  Scenario: Test Request GetBranchList
    Given url masterdataUrl
    Given path "/api/Branch/GetBranchList"
    Given request
      """
      {
        "CompCode": "O",
        "LocCode": "005"
      }
      """
    When method POST
    Then status 200