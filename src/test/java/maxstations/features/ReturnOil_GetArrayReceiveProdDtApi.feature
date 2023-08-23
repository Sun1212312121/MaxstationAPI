Feature: ReturnOil_GetArrayReceiveProdDt Api

Scenario: Test ReturnOil_GetArrayReceiveProdDt
  Given url inventoryUrl
  Given path "/api/ReturnOil/GetArrayReceiveProdDt"
  Given request
  """
{
    "InvReceiveProdDt": [],
    "CompCode": "B",
    "BrnCode": "35H",
    "LocCode": "001",
    "DocType": "Oil",
    "DocNo": "RO35H-21120037",
    "DocStatus": "Active",
    "DocDate": "2021-12-23T00:00:00",
    "PoTypeId": "ZOIL",
    "PoNo": "4300955704",
    "PoDate": "2021-12-23T00:00:00",
    "SupCode": "01-ท210070",
    "SupName": "ไทยออยล์ จำกัด (มหาชน) ศรีราชา",
    "InvNo": "1212229590",
    "InvDate": "2021-12-23T00:00:00",
    "DueDate": "2021-12-23T00:00:00",
    "VatType": "VI",
    "InvAddrId": "",
    "InvAddress": "สำนักงานใหญ่",
    "PayAddrId": "",
    "PayAddress": "ชำระสำนักงานใหญ่",
    "Remark": "",
    "ItemCount": 0,
    "Currency": "THB",
    "CurRate": 1,
    "SubAmt": 455833.92,
    "SubAmtCur": 455833.92,
    "DiscRate": "",
    "DiscAmt": 0,
    "DiscAmtCur": 0,
    "TotalAmt": 455833.92,
    "TotalAmtCur": 455833.92,
    "TaxBaseAmt": 426013.01,
    "TaxBaseAmtCur": 426013.01,
    "VatRate": 0,
    "VatAmt": 29820.91,
    "VatAmtCur": 29820.91,
    "ShippingAmt": 0,
    "ShippingAmtCur": 0,
    "EtaxAmt": 0,
    "EtaxAmtCur": 0,
    "NetAmt": 455833.92,
    "NetAmtCur": 455833.92,
    "Source": "SAP",
    "Post": "P",
    "RunNumber": 37,
    "DocPattern": "RO35H-2112####",
    "Guid": "b5949f05-0b99-4f9d-888c-0e663513688d",
    "CreatedDate": "2021-12-24T08:29:49.387",
    "CreatedBy": "63001651",
    "UpdatedDate": "2021-12-24T10:48:16.847",
    "UpdatedBy": "564542",
    "DeliveryNo": null
}
  """
  When method POST
  Then status 200
  Then print response
