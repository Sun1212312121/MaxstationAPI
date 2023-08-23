Feature: Request CreateRequest Api

  Scenario: Test get document from daily operation

    Given url commonUrl
    Given path "common/api/Auth/GenerateToken"
    Given header ProgramId = clientId
    And header Content-Length = 0
    And header Content-Type = "application/json"
    When method POST
    Then status 200
    Then print response

    Given url inventoryUrl
    Given path "/api/Request/CreateRequest"
    Given header Authorization = response
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
    "CreatedDate": "2023-07-14T07:14:07.223Z",
    "DocDate": "2022-01-20T17:00:00.000Z",
    "DocNo": "2201####",
    "DocStatus": "Active",
    "Guid": "1f8f68b6-e7ff-42f0-8b35-27bb2cc57f93",
    "InvRequestDt": [
        {
            "BrnCode": "01L",
            "CompCode": "O",
            "DocNo": "2201####",
            "ItemQty": 1,
            "LocCode": "005",
            "UnitBarcode": "00218",
            "DocTypeId": "001",
            "PdId": "00218",
            "PdName": "Go! 2T 1 ลิตร",
            "SeqNo": 0,
            "StockQty": 0,
            "StockRemain": 0,
            "UnitId": "040",
            "UnitName": "กระป๋อง",
            "UnitRatio": 0
        },
        {
            "BrnCode": "01L",
            "CompCode": "O",
            "DocNo": "2201####",
            "ItemQty": 1,
            "LocCode": "005",
            "UnitBarcode": "00224",
            "DocTypeId": "001",
            "PdId": "00224",
            "PdName": "Go! 2T 0.5 ลิตร",
            "SeqNo": 1,
            "StockQty": 0,
            "StockRemain": 0,
            "UnitId": "040",
            "UnitName": "กระป๋อง",
            "UnitRatio": 0
        }
    ],
    "LocCode": "005",
    "DocTypeId": "001",
    "Post": "N",
    "Remark": null,
    "RunNumber": 0,
    "DocPattern": "2201####",
    "UpdatedBy": "10040371",
    "UpdatedDate": "2023-07-14T07:14:07.223Z"
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