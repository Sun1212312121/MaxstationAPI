Feature: Supplier_UpdateSupplierApi

Scenario: Supplier UpdateSupplier
  Given url masterdataUrl
  Given path "/api/Supplier/UpdateSupplier"
  Given request
  """
{
    "Supplier": {
        "Address": "",
        "CreatedBy": "ETL",
        "CreatedDate": "2022-01-20T19:03:34.2",
        "CreditTerm": 30,
        "District": "",
        "Fax": "999",
        "MapSupCode": "01-210060",
        "Phone": "123456",
        "Postcode": "10000",
        "Province": "",
        "Remark": "",
        "SubDistrict": "",
        "SupCode": "01-210060",
        "SupName": "เค.ที.บี.บริการ จำกัด",
        "SupPrefix": "บริษัท",
        "SupStatus": "Active",
        "TaxId": "3701022746",
        "UpdatedBy": "10040371",
        "UpdatedDate": "2023-03-31T13:24:03.51",
        "VatType": "VI",
        "Guid": "57ab984a-a25f-4d9a-86c0-cd67a5bdd21c"
    },
    "ArrSupProduct": [
        {
            "CompCode": "B",
            "SupCode": "01-210060",
            "UnitBarcode": "000001",
            "UnitCost": 13,
            "UnitPack": 1,
            "UnitPrice": 0
        },
        {
            "CompCode": "B",
            "SupCode": "01-210060",
            "UnitBarcode": "000002",
            "UnitCost": 16,
            "UnitPack": 1,
            "UnitPrice": 0
        },
        {
            "CompCode": "B",
            "SupCode": "01-210060",
            "UnitBarcode": "000004",
            "UnitCost": 15,
            "UnitPack": 1,
            "UnitPrice": 0
        },
        {
            "CompCode": "B",
            "SupCode": "01-210060",
            "UnitBarcode": "000005",
            "UnitCost": 15,
            "UnitPack": 1,
            "UnitPrice": 0
        },
        {
            "CompCode": "B",
            "SupCode": "01-210060",
            "UnitBarcode": "000071",
            "UnitCost": 0,
            "UnitPack": 1,
            "UnitPrice": 10
        },
        {
            "CompCode": "B",
            "SupCode": "01-210060",
            "UnitBarcode": "000073",
            "UnitCost": 27,
            "UnitPack": 1,
            "UnitPrice": 25
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