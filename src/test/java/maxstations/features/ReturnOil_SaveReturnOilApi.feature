Feature: ReturnOil_SaveReturnOil Api

Scenario: Test ReturnOil_SaveReturnOil
  Given url inventoryUrl
  Given path "/api/ReturnOil/SaveReturnOil"
  Given request
  """
{
    "Header": {
        "BrnCode": "35H",
        "BrnCodeTo": "Z02",
        "BrnNameTo": "",
        "CompCode": "B",
        "CreatedBy": "10040371",
        "CreatedDate": null,
        "DocDate": "2023-07-10",
        "DocNo": "RTO35H-2307####",
        "DocPattern": "RTO35H-2307####",
        "DocStatus": "New",
        "Guid": "7a3e9705-2bdd-4433-98bc-ae5f9e8fbde1",
        "LocCode": "001",
        "PoNo": "4300955704",
        "Post": "N",
        "ReasonDesc": "",
        "ReasonId": "01",
        "RefNo": "RO35H-21120037",
        "Remark": "",
        "RunNumber": 0,
        "UpdatedBy": "",
        "UpdatedDate": null
    },
    "ArrayDetail": [
        {
            "BrnCode": "35H",
            "BrnCodeFrom": "",
            "BrnNameFrom": "",
            "CompCode": "B",
            "DocNo": "RO35H-21120037",
            "ItemQty": 3000,
            "LocCode": "001",
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "RefQty": 3000,
            "SeqNo": 1,
            "StockQty": 3000,
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UnitName": "ลิตร"
        }
    ]
}
  """
  When method POST
  Then status 200
  Then print response
