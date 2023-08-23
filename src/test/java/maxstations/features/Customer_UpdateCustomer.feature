Feature: Customer_UpdateCustomer Api

Scenario: Test Customer UpdateCustomer
  Given url masterdataUrl
  Given path "/api/Customer/UpdateCustomer"
  Given request
  """
{
    "Customer": {
        "AccountId": "91102",
        "Address": "175 หมู่3 ต.ทุ่งหลวง อ.ดอยสะเก็ด จ.เชียงใหม่",
        "BillType": "Y",
        "BrnCode": "",
        "CitizenId": "",
        "CompCode": "B",
        "ContactName": "",
        "CountryCode": "",
        "CountryName": "",
        "CreatedBy": "ETL",
        "CreatedDate": "2022-01-20T19:02:59.41",
        "CreditLimit": 0,
        "CreditTerm": 0,
        "CustCode": "000001",
        "CustName": "ดอยสะเก็ด",
        "CustPrefix": ".",
        "CustStatus": "Active",
        "District": "อ.ดอยสะเก็ด",
        "DueType": "16/N,1/15",
        "Fax": "",
        "Guid": "3a27aecf-fe52-4d71-9fad-2da1252212fd",
        "MapCustCode": "000001",
        "Phone": "",
        "Postcode": "",
        "ProvCode": "5005",
        "ProvName": "จ.เชียงใหม่",
        "SubDistrict": "",
        "UpdatedBy": "",
        "UpdatedDate": "2023-06-08T14:01:37.063"
    },
    "ArrCustomerCar": [
        {
            "CarStatus": "Active",
            "CreatedBy": "ETL",
            "CreatedDate": "2022-01-20T19:02:59.41",
            "CustCode": "000001",
            "LicensePlate": "กก-111",
            "UpdatedBy": "",
            "UpdatedDate": "2023-06-08T14:01:37.063"
        },
        {
            "CarStatus": "Active",
            "CreatedBy": "ETL",
            "CreatedDate": "2022-01-20T19:02:59.41",
            "CustCode": "000001",
            "LicensePlate": "กก-112",
            "UpdatedBy": "",
            "UpdatedDate": "2023-06-08T14:01:37.063"
        },
        {
            "CarStatus": "Active",
            "CreatedBy": "ETL",
            "CreatedDate": "2022-01-20T19:02:59.41",
            "CustCode": "000001",
            "LicensePlate": "กก-113",
            "UpdatedBy": "",
            "UpdatedDate": "2023-06-08T14:01:37.063"
        },
        {
            "CarStatus": "Active",
            "CreatedBy": "ETL",
            "CreatedDate": "2022-01-20T19:02:59.41",
            "CustCode": "000001",
            "LicensePlate": "กก-114",
            "UpdatedBy": "",
            "UpdatedDate": "2023-06-08T14:01:37.063"
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