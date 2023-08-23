Feature: Adjust_CreateAdjust Api

Scenario: Test Adjust CreateAdjust
  Given url inventoryUrl
  Given path "/api/Adjust/CreateAdjust"
  Given request
  """
{
    "BrnCode": "003",
    "BrnCodeFrom": "003",
    "BrnNameFrom": "",
    "CompCode": "B",
    "CreatedBy": "10040371",
    "CreatedDate": "2023-07-20T03:28:17.676Z",
    "DocDate": "2023-06-26",
    "DocNo": "AJ003-2306####",
    "DocPattern": "AJ003-2306####",
    "DocStatus": "Active",
    "DocType": "Adjust",
    "EmpCode": "",
    "EmpName": "",
    "Guid": "1f8f68b6-e7ff-42f0-8b35-27bb2cc57f93",
    "LocCode": "001",
    "Post": "N",
    "ReasonDesc": "",
    "ReasonId": "",
    "RefNo": "RJ003-23060003",
    "Remark": "",
    "RunNumber": 0,
    "UpdatedBy": "",
    "UpdatedDate": null,
    "InvAdjustDt": [
        {
            "BrnCode": "003",
            "CompCode": "B",
            "DocNo": "RJ003-23060003",
            "DocType": "Adjust",
            "ItemQty": 1,
            "LocCode": "001",
            "PdId": "06451",
            "PdName": "หัวเชื้อโซล่า (นอร์ท) 170 ซีซี",
            "RefQty": 1,
            "SeqNo": 1,
            "StockQty": 1,
            "UnitBarcode": "06451",
            "UnitCost": 0,
            "UnitId": "010",
            "UnitName": "ขวด",
            "UnitPrice": 0
        }
    ]
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