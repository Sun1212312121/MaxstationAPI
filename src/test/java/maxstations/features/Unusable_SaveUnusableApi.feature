Feature: Unusable_SaveUnusable Api

Scenario: Test Unusable SaveUnusable
  Given url inventoryUrl
  Given path "/api/Unusable/SaveUnusable"
  Given request
  """
{
    "Header": {
        "BrnCode": "35H",
        "CompCode": "B",
        "CreatedBy": "10040371",
        "CreatedDate": null,
        "DocDate": "2023-07-10",
        "DocNo": "UN35H-2307####",
        "DocPattern": "UN35H-2307####",
        "DocStatus": "New",
        "Guid": "961d8758-cf66-43f7-b197-5a001d105ed0",
        "LocCode": "001",
        "Post": "N",
        "ReasonDesc": "",
        "ReasonId": "73",
        "Remark": "test",
        "RunNumber": 0,
        "UpdatedBy": "",
        "UpdatedDate": null
    },
    "ArrayDetail": [
        {
            "BrnCode": "",
            "CompCode": "",
            "DocNo": "",
            "ItemQty": 1,
            "LocCode": "",
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SeqNo": 0,
            "StockQty": 0,
            "UnitBarcode": "",
            "UnitId": "001",
            "UnitName": "ลิตร"
        }
    ]
}
  """
  When method POST
  Then status 200
  Then print response
