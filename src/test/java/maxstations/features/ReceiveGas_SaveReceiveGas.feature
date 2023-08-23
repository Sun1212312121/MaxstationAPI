Feature: Receive SaveReceiveGas Api

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
    Given path "/api/ReceiveGas/SaveReceiveGas"
    Given header Authorization = response
    Given request
    """
      {
    "Header": {
            "BrnCode": "01L",
            "CompCode": "O",
            "CreatedBy": "10040371",
            "CreatedDate": null,
            "CurRate": 1,
            "Currency": "THB",
            "DeliveryNo": "",
            "DiscAmt": 0,
            "DiscAmtCur": 0,
            "DiscRate": "",
            "DocDate": "2022-01-21",
            "DocNo": "RG01L-2201####",
            "DocPattern": "RG01L-2201####",
            "DocStatus": "New",
            "DocType": "Gas",
            "DueDate": "2022-01-21",
            "EtaxAmt": 0,
            "EtaxAmtCur": 0,
            "Guid": "090d0902-685d-44a9-a509-23b943d42318",
            "InvAddrId": "B",
            "InvAddress": "สาขา",
            "InvDate": "2023-07-13",
            "InvNo": "1234567890",
            "ItemCount": 1,
            "LocCode": "005",
            "NetAmt": 53537.4,
            "NetAmtCur": 53537.4,
            "PayAddrId": "3",
            "PayAddress": "ชำระสำนักงานใหญ่",
            "PoDate": "2022-01-19",
            "PoNo": "4500059784",
            "PoTypeId": "ZLPG",
            "Post": "N",
            "Remark": "test",
            "RunNumber": 0,
            "ShippingAmt": 0,
            "ShippingAmtCur": 0,
            "Source": "SAP",
            "SubAmt": 53537.4,
            "SubAmtCur": 53537.4,
            "SupCode": "01-อ210530",
            "SupName": "แอตลาส ออยล์ จำกัด",
            "TaxBaseAmt": 50034.95327102804,
            "TaxBaseAmtCur": 50034.95327102804,
            "TotalAmt": 53537.4,
            "TotalAmtCur": 53537.4,
            "UpdatedBy": "",
            "UpdatedDate": null,
            "VatAmt": 3502.4467289719623,
            "VatAmtCur": 3502.4467289719623,
            "VatRate": 0,
            "VatType": "VI"
        },
        "Details": [
          {
                "BrnCode": "01L",
                "CompCode": "O",
                "Density": 0.54,
                "DensityBase": 0.54,
                "DiscAmt": 0,
                "DiscAmtCur": 0,
                "DiscHdAmt": 0,
                "DiscHdAmtCur": 0,
                "DocNo": "RG01L-2201####",
                "DocType": "Gas",
                "IsFree": false,
                "ItemQty": 5556,
                "ItemRemain": 0,
                "LocCode": "",
                "PdId": "000011",
                "PdName": "แก๊ส LPG",
                "PoQty": 3000,
                "ReturnQty": 0,
                "ReturnStock": 0,
                "SeqNo": 10,
                "StockQty": 5556,
                "StockRemain": 0,
                "SubAmt": 0,
                "SubAmtCur": 0,
                "SumItemAmt": 53537.4,
                "SumItemAmtCur": 53537.4,
                "TaxBaseAmt": 0,
                "TaxBaseAmtCur": 0,
                "Temperature": 1,
                "TotalAmt": 0,
                "TotalAmtCur": 0,
                "UnitBarcode": "000011",
                "UnitId": "039",
                "UnitName": "กิโลกรัม",
                "UnitPrice": 9.636732,
                "UnitPriceCur": 9.636732,
                "VatAmt": 0,
                "VatAmtCur": 0,
                "VatRate": 0,
                "VatType": "",
                "WeightPrice": 17.8458,
                "WeightQty": 3000
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