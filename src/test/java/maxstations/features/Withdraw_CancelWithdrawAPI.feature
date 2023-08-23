Feature: Withdraw_CancelWithdraw API

  Scenario: test Withdraw CancelWithdraw API
    Given url inventoryUrl
    Given path "/api/Withdraw/CancelWithdraw/8e70c5b3-8bfd-4fdd-a670-dd3890fa89b7"
    Given request
      """
        {
            "CompCode": "O",
            "BrnCode": "01L",
            "LocCode": "005",
            "DocNo": "WD01L-22010025",
            "DocStatus": "Active",
            "DocDate": "2022-01-21",
            "UseBrnCode": "02L",
            "ReasonId": "50",
            "ReasonDesc": "ส่งเสริมการขาย",
            "Remark": null,
            "Post": "N",
            "RunNumber": 25,
            "DocPattern": "WD01L-2201####",
            "Guid": "8e70c5b3-8bfd-4fdd-a670-dd3890fa89b7",
            "CreatedBy": "10040371",
            "UpdatedBy": "10040371",
            "InvWithdrawDt": [
                {
                    "BrnCode": "01L",
                    "CompCode": "O",
                    "DocNo": "WD01L-22010025",
                    "ItemQty": 1,
                    "LocCode": "005",
                    "PdId": "58212",
                    "PdName": "น้ำทิพย์1500ccแถม",
                    "SeqNo": 1,
                    "StockQty": 1,
                    "UnitBarcode": "58212",
                    "UnitId": "010",
                    "UnitName": "ขวด",
                    "GroupId": "8400"
                },
                {
                    "BrnCode": "01L",
                    "CompCode": "O",
                    "DocNo": "WD01L-22010025",
                    "ItemQty": 1,
                    "LocCode": "005",
                    "PdId": "58927",
                    "PdName": "น้ำดื่มทิพย์สยาม 1500 ซีซี แพ็ค",
                    "SeqNo": 2,
                    "StockQty": 1,
                    "UnitBarcode": "58927",
                    "UnitId": "021",
                    "UnitName": "แพ็ค",
                    "GroupId": "8400"
                },
                {
                    "BrnCode": "01L",
                    "CompCode": "O",
                    "DocNo": "WD01L-22010025",
                    "ItemQty": 1,
                    "LocCode": "005",
                    "PdId": "58993",
                    "PdName": "นิสชินซองรสไก่เผ็ดเกาหลีไข่เค็ม60 ก.",
                    "SeqNo": 3,
                    "StockQty": 1,
                    "UnitBarcode": "58993",
                    "UnitId": "007",
                    "UnitName": "ซอง",
                    "GroupId": "8400"
                }
            ],
            "CreatedDate": "2023-07-14T06:31:58.427Z",
            "EmpCode": "10040371",
            "EmpName": "น.ส. ฉัตรชมพู รอดเนียม",
            "LicensePlate": "1กก3953",
            "RefNo": null,
            "UpdatedDate": "1970-01-01T00:00:00.000Z",
            "UseBrnName": "สถานีแก๊ส เชียงใหม่7                              "
        }
      """
    When method POST
    Then status 200
    Then print response