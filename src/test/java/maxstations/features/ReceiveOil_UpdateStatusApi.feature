Feature: ReceiveOil_UpdateStatus Api

Scenario: Test ReceiveOil UpdateStatus
  Given url inventoryUrl
  Given path "/api/ReceiveOil/UpdateStatus"
  Given request
  """
{
    "InvReceiveProdHd": {
        "BrnCode": "01L",
        "CompCode": "O",
        "CreatedBy": "10040371",
        "CreatedDate": "2023-07-14T14:08:22.3011002+07:00",
        "CurRate": 1,
        "Currency": "THB",
        "DeliveryNo": "",
        "DiscAmt": 0,
        "DiscAmtCur": 0,
        "DiscRate": "",
        "DocDate": "2022-01-20T17:00:00.000Z",
        "DocNo": "RO01L-22010003",
        "DocPattern": "RO01L-2201####",
        "DocStatus": "Cancel",
        "DocType": "Oil",
        "DueDate": "2022-02-20T00:00:00",
        "EtaxAmt": 0,
        "EtaxAmtCur": 0,
        "Guid": "86a79d33-42c9-4f0e-96bb-a50a22c10d13",
        "InvAddrId": "",
        "InvAddress": "",
        "InvDate": "2023-07-05T00:00:00",
        "InvNo": "123456789",
        "ItemCount": 0,
        "LocCode": "005",
        "NetAmt": 762.62,
        "NetAmtCur": 762.62,
        "PayAddrId": "",
        "PayAddress": "",
        "PoDate": "2022-01-20T00:00:00",
        "PoNo": "5400535353",
        "PoTypeId": "ZIN3",
        "Post": "N",
        "Remark": "",
        "RunNumber": 3,
        "ShippingAmt": 0,
        "ShippingAmtCur": 0,
        "Source": "SAP",
        "SubAmt": 762.62,
        "SubAmtCur": 762.62,
        "SupCode": "01-พ210180",
        "SupName": "พีทึจีเอนเนอยี บมจ คลังลำปาง",
        "TaxBaseAmt": 712.7289719626168,
        "TaxBaseAmtCur": 712.7289719626168,
        "TotalAmt": 762.62,
        "TotalAmtCur": 762.62,
        "UpdatedBy": "10040371",
        "UpdatedDate": "2023-07-14T14:10:25.7731146+07:00",
        "VatAmt": 49.89102803738318,
        "VatAmtCur": 49.89102803738318,
        "VatRate": 0,
        "VatType": "VI"
    },
    "InvReceiveProdDts": null
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