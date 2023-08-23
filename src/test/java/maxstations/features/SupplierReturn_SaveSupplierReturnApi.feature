Feature: SupplierReturn_SaveSupplierReturn Api

Scenario: Test SupplierReturn SaveSupplierReturn
  Given url inventoryUrl
  Given path "/api/SupplierReturn/SaveSupplierReturn"
  Given request
  """
{
    "Header": {
        "BrnCode": "35H",
        "CompCode": "B",
        "CreatedBy": "10040371",
        "CreatedDate": null,
        "DocDate": "2023-07-10",
        "DocNo": "RTS35H-2307####",
        "DocPattern": "RTS35H-2307####",
        "DocStatus": "New",
        "Guid": "f7bc63bd-fa24-4fdb-9ae4-9cec02b5da08",
        "LocCode": "001",
        "PoNo": "5400522788",
        "Post": "N",
        "ReasonDesc": "",
        "ReasonId": "02",
        "RefNo": "RO35H-21120040",
        "Remark": "test\n",
        "RunNumber": 0,
        "SupCode": "01-พ210290",
        "SupName": "พีทีจีเอนเนอร์ยี บมจ คลังวังน้อย",
        "UpdatedBy": "",
        "UpdatedDate": null
    },
    "ArrayDetail": [
        {
            "BrnCode": "35H",
            "CompCode": "B",
            "DocNo": "RO35H-21120040",
            "ItemQty": 1,
            "LocCode": "001",
            "PdId": "08622",
            "PdName": "แม็คนิตรอน 2 ที ออโตลูบ  0.5 ลิตร",
            "RefQty": 9,
            "SeqNo": 6,
            "StockQty": null,
            "UnitBarcode": null,
            "UnitId": "040",
            "UnitName": "กระป๋อง"
        }
    ]
}
  """
  When method POST
  Then status 200
  Then print response
