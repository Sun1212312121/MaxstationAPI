Feature: Product_UpdateProduct Api

Scenario: Test Product UpdateProduct
  Given url masterdataUrl
  Given path "/api/Product/UpdateProduct"
  Given request
  """
{
    "Product": {
        "AcctCode": "70111",
        "CreatedBy": "",
        "CreatedDate": "2021-10-27T19:00:32.627",
        "GroupId": "0000",
        "SubGroupId": "03",
        "MapPdId": "000011",
        "PdDesc": "แก๊ส LPG",
        "PdId": "000011",
        "PdImage": "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",
        "PdName": "แก๊ส LPG",
        "PdStatus": "Active",
        "PdType": "Product",
        "UnitId": "001",
        "UnitName": "ลิตร",
        "UpdatedBy": "10040371",
        "UpdatedDate": "2022-01-20T19:00:36.383",
        "VatRate": 7,
        "VatType": "VI",
        "Guid": "590c6015-390e-4889-ad24-a080dc873504"
    },
    "ArrProductUnit": [
        {
            "CreatedBy": "ETL",
            "CreatedDate": "2022-01-20T19:00:29.637",
            "PdId": "000011",
            "UnitBarcode": "000011",
            "UnitId": "001",
            "UnitName": "ลิตร",
            "UnitRatio": 1,
            "UnitStock": 1,
            "UpdatedBy": "",
            "UpdatedDate": null
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