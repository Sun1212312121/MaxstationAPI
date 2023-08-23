Feature: ReceiveGas_SaveReceiveGas Api

Scenario: Test ReceiveGas SaveReceiveGas
  Given url inventoryUrl
  Given path "/api/ReceiveGas/UpdateStatus"
  Given request
  """
    {
        "BrnCode": "01L",
        "CompCode": "O",
        "CreatedBy": "10040371",
        "CreatedDate": "2023-07-14T09:54:40.2661328+07:00",
        "CurRate": 1,
        "Currency": "THB",
        "DeliveryNo": "",
        "DiscAmt": 0,
        "DiscAmtCur": 0,
        "DiscRate": "",
        "DocDate": "2022-01-20T17:00:00.000Z",
        "DocNo": "RG01L-22010019",
        "DocPattern": "RG01L-2201####",
        "DocStatus": "Cancel",
        "DocType": "Gas",
        "DueDate": "2022-01-21T00:00:00",
        "EtaxAmt": 0,
        "EtaxAmtCur": 0,
        "Guid": "f5bd3c73-36eb-41e1-b38f-9ba090f357db",
        "InvAddrId": "B",
        "InvAddress": "สาขา",
        "InvDate": "2023-07-13T00:00:00",
        "InvNo": "1234567890",
        "ItemCount": 1,
        "LocCode": "005",
        "NetAmt": 53590.9374,
        "NetAmtCur": 53590.9374,
        "PayAddrId": "3",
        "PayAddress": "ชำระสำนักงานใหญ่",
        "PoDate": "2022-01-19T00:00:00",
        "PoNo": "4500059784",
        "PoTypeId": "ZLPG",
        "Post": "N",
        "Remark": "test",
        "RunNumber": 19,
        "ShippingAmt": 0,
        "ShippingAmtCur": 0,
        "Source": "SAP",
        "SubAmt": 53590.9374,
        "SubAmtCur": 53590.9374,
        "SupCode": "01-อ210530",
        "SupName": "แอตลาส ออยล์ จำกัด",
        "TaxBaseAmt": 50084.988224299064,
        "TaxBaseAmtCur": 50084.988224299064,
        "TotalAmt": 53590.9374,
        "TotalAmtCur": 53590.9374,
        "UpdatedBy": "10040371",
        "UpdatedDate": "2023-07-14T09:57:00.2111038+07:00",
        "VatAmt": 3505.949175700935,
        "VatAmtCur": 3505.949175700935,
        "VatRate": 0,
        "VatType": "VI"
    }
  """
  When method POST
  Then status 200
  Then print response
