Feature: TransferOut_InsertTransferOutApi

  Scenario: Test TransferOut InsertTransferOutApi
    Given url inventoryUrl
    Given path "/api/TransferOut/InsertTransferOut"
    Given request
      """
       {
          "brnName": "Test",
          "invTranoutDt": [
              {
                  "compCode": "B",
                  "brnCode": "811",
                  "locCode": "001",
                  "docNo": "TI811-2205####",
                  "seqNo": 1,
                  "pdId": "00218",
                  "pdName": "Go! 2T 1 ลิตร",
                  "unitBarcode": "00218",
                  "unitId": "040",
                  "unitName": "กระป๋อง",
                  "refQty": 1,
                  "itemQty": 1,
                  "stockQty": 1,
                  "stockRemain": 1000
              }
          ],
          "compCode": "B",
                  "brnCode": "811",
                  "locCode": "001",
          "docNo": "TI811-2205####",
          "docStatus": "Active",
          "docDate": "2023-07-14T04:20:26.442Z",
          "refNo": "123456789",
          "brnCodeTo": "35H",
          "brnNameTo": "Test",
          "remark": "Test",
          "post": "T",
          "runNumber": 0,
          "docPattern": "T111111",
          "createdDate": "2023-07-14T04:20:26.443Z",
          "createdBy": "10040371",
          "updatedDate": "2023-07-14T04:20:26.443Z",
          "updatedBy": "10040371",
          "listTransOutDt": [
              {
                  "compCode": "B",
                  "brnCode": "811",
                  "locCode": "001",
                  "docNo": "TI811-2205####",
                  "seqNo": 1,
                  "pdId": "00218",
                  "pdName": "Go! 2T 1 ลิตร",
                  "unitBarcode": "00218",
                  "unitId": "040",
                  "unitName": "กระป๋อง",
                  "refQty": 1,
                  "itemQty": 1,
                  "stockQty": 1,
                  "stockRemain": 1000
              }
          ]
      }
      """
    When method POST
    Then status 200