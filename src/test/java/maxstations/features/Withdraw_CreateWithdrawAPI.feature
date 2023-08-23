Feature: Withdraw_CreateWithdraw API

  Scenario: test Withdraw CreateWithdraw API
    Given url inventoryUrl
    Given path "/api/Withdraw/CreateWithdraw"
    Given request
      """
        {
            "CompCode": "O",
            "BrnCode": "01L",
            "LocCode": "005",
            "DocNo": "WD01L-2201####",
            "DocStatus": "Active",
            "DocDate": "2022-01-21",
            "UseBrnCode": "02L",
            "ReasonId": "50",
            "ReasonDesc": "ส่งเสริมการขาย",
            "Remark": null,
            "Post": "N",
            "RunNumber": 0,
            "DocPattern": "WD01L-2201####",
            "Guid": "1f8f68b6-e7ff-42f0-8b35-27bb2cc57f93",
            "CreatedBy": "10040371",
            "UpdatedBy": "",
            "InvWithdrawDt": [
                {
                    "BrnCode": "01L",
                    "CompCode": "O",
                    "DocNo": "WD01L-2201####",
                    "ItemQty": 1,
                    "LocCode": "005",
                    "PdId": "58212",
                    "PdName": "น้ำทิพย์1500ccแถม",
                    "SeqNo": 0,
                    "StockQty": 0,
                    "UnitBarcode": "58212",
                    "UnitId": "010",
                    "UnitName": "ขวด",
                    "GroupId": "8400"
                },
                {
                    "BrnCode": "01L",
                    "CompCode": "O",
                    "DocNo": "WD01L-2201####",
                    "ItemQty": 1,
                    "LocCode": "005",
                    "PdId": "58927",
                    "PdName": "น้ำดื่มทิพย์สยาม 1500 ซีซี แพ็ค",
                    "SeqNo": 1,
                    "StockQty": 0,
                    "UnitBarcode": "58927",
                    "UnitId": "021",
                    "UnitName": "แพ็ค",
                    "GroupId": "8400"
                }
            ],
            "CreatedDate": "2023-07-14T06:24:58.351Z",
            "EmpCode": "10040371",
            "EmpName": "น.ส. ฉัตรชมพู รอดเนียม",
            "LicensePlate": "1กก3953",
            "RefNo": "",
            "UpdatedDate": null,
            "UseBrnName": ""
        }
      """
    When method POST
    Then status 200
    Then print response