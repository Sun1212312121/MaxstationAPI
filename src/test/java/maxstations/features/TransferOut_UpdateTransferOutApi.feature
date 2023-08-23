Feature: TransferOut_UpdateTransferOut Api

Scenario: Test TransferOut UpdateTransferOut
  Given url inventoryUrl
  Given path "/api/TransferOut/UpdateTransferOut"
  Given request
  """
      {
          "compCode": "B",
          "brnCode": "811",
          "locCode": "001",
          "docNo": "TO811-23070002",
          "docStatus": "Cancel",
          "docDate": "2023-07-14T00:00:00",
          "refNo": "123456789",
          "brnCodeTo": "35H",
          "brnNameTo": "Test",
          "remark": "Test",
          "post": "T",
          "runNumber": 2,
          "docPattern": "T111111",
          "guid": "88742f33-8f56-431d-b2b9-c36a99a33b2e",
          "createdDate": "2023-07-19T13:37:44.67",
          "createdBy": "10040371",
          "updatedDate": "2023-07-14T04:20:26.443",
          "updatedBy": "10040371",
          "listTransOutDt": [
              {
                  "compCode": "B",
                  "brnCode": "811",
                  "locCode": "001",
                  "docNo": "TO811-23070002",
                  "seqNo": 1,
                  "pdId": "00218",
                  "pdName": "Go! 2T 1 ลิตร",
                  "unitId": "040",
                  "unitBarcode": "00218",
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
  Then print response
