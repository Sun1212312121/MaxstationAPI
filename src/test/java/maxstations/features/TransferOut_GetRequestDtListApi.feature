Feature: TransferOut_GetRequestDtList Api

  Scenario: Test TransferOut GetRequestDtList
    Given url inventoryUrl
    Given path "/api/TransferOut/GetRequestDtList"
    Given request
      """
        {
          "brnCode": "80Q",
          "compCode": "O",
          "docNo": "21070001",
          "docTypeId": "001",
          "locCode": "001"
        }

      """
    When method POST
    Then status 200