Feature: Request_UpdateRequest Api

  Scenario: Test Request UpdateRequestApi
    Given url inventoryUrl
    Given path "/api/Request/UpdateRequest"
    Given request
      """
      {
          "BrnCode": "01L",
          "BrnCodeFrom": "02L",
          "BrnCodeTo": "01L",
          "BrnNameFrom": "เชียงใหม่7",
          "BrnNameTo": "เชียงใหม่ 3",
          "CompCode": "O",
          "CreatedBy": "10040371",
          "CreatedDate": "2023-07-14T14:17:13.507",
          "DocDate": "2022-01-21T00:00:00",
          "DocNo": "22010002",
          "DocStatus": "Active",
          "Guid": "ad64ccfd-ab58-4a34-9fb4-ecb12ce14438",
          "InvRequestDt": [
              {
                  "CompCode": "O",
                  "BrnCode": "01L",
                  "DocNo": "22010002",
                  "ItemQty": 2,
                  "LocCode": "005",
                  "UnitBarcode": "00218",
                  "DocTypeId": "001",
                  "PdId": "00218",
                  "PdName": "Go! 2T 1 ลิตร",
                  "SeqNo": 1,
                  "StockQty": 1,
                  "StockRemain": 1,
                  "UnitId": "040",
                  "UnitName": "กระป๋อง"
              },
              {
                  "CompCode": "O",
                  "BrnCode": "01L",
                  "DocNo": "22010002",
                  "ItemQty": 1,
                  "LocCode": "005",
                  "UnitBarcode": "00224",
                  "DocTypeId": "001",
                  "PdId": "00224",
                  "PdName": "Go! 2T 0.5 ลิตร",
                  "SeqNo": 2,
                  "StockQty": 1,
                  "StockRemain": 1,
                  "UnitId": "040",
                  "UnitName": "กระป๋อง"
              }
          ],
          "LocCode": "005",
          "DocTypeId": "001",
          "Post": "N",
          "Remark": null,
          "RunNumber": 2,
          "DocPattern": "2201####",
          "UpdatedBy": "10040371",
          "UpdatedDate": "2023-07-14T14:17:13.507"
      }
      """
    When method PUT
    Then status 200