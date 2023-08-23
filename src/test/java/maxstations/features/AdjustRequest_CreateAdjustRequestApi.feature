Feature: AdjustRequest_CreateAdjustRequest Api

Scenario: Test AdjustRequest CreateAdjustRequest
  Given url inventoryUrl
  Given path "/api/AdjustRequest/CreateAdjustRequest"
  Given request
  """
{
    "CompCode": "B",
    "BrnCode": "003",
    "LocCode": "001",
    "DocNo": "RJ003-2306####",
    "DocStatus": "Active",
    "DocDate": "2023-06-26",
    "ReasonId": "02",
    "ReasonDesc": "สินค้าหมดอายุ",
    "Remark": "test",
    "Post": "N",
    "RunNumber": 0,
    "DocPattern": "RJ003-2306####",
    "Guid": "1f8f68b6-e7ff-42f0-8b35-27bb2cc57f93",
    "CreatedBy": "10040371",
    "UpdatedBy": "",
    "InvAdjustRequestDt": [
        {
            "BrnCode": "003",
            "CompCode": "B",
            "DocNo": "RJ003-2306####",
            "ItemQty": 1,
            "LocCode": "001",
            "PdId": "06451",
            "PdName": "หัวเชื้อโซล่า (นอร์ท) 170 ซีซี",
            "SeqNo": 0,
            "StockQty": 0,
            "StockRemain": 0,
            "UnitBarcode": "06451",
            "UnitId": "010",
            "UnitName": "ขวด"
        }
    ],
    "CreatedDate": "2023-07-20T03:18:13.208Z",
    "UpdatedDate": null
}
  """
  When method POST
  Then status 200
  Then print response

@ignore @report=false
Scenario: Test ignore
  Given url "http://abc.xyz"
  Given path "demo"
  When method GET
  Then status 404