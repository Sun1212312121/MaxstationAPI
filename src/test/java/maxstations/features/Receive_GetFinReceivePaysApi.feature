Feature: Receive_GetFinReceivePays Api

Scenario: Test Receive GetFinReceivePays
  Given url financeUrl
  Given path "/api/Receive/GetFinReceivePays"
  Given request
  """
{
    "AccountNo": "",
    "BankName": "",
    "BankNo": "",
    "BillNo": "61490",
    "BrnCode": "003",
    "CompCode": "B",
    "CreatedBy": "10008642",
    "CreatedDate": "2023-02-17T06:17:40.257Z",
    "CustAddr1": "90 อาคารซีดับเบิ้ลยู ทาวเวอร์เอ ชั้น 33 ถนนรัชดาภิเษก แขวงห้วยขวาง",
    "CustAddr2": "เขตห้วยขวาง จ.กรุงเทพมหานคร 10310",
    "CustCode": "200421",
    "CustName": ". บริษัท แมกซ์ มี คอร์ป จำกัด",
    "DiscAmt": 1000,
    "DiscAmtCur": 1000,
    "DocDate": "2022-01-28T17:00:00.000Z",
    "DocNo": "RC003-22010014",
    "DocPattern": "RC003-2201####",
    "DocStatus": "Active",
    "EtlLotNo": null,
    "FeeAmt": 0,
    "FeeAmtCur": 0,
    "Guid": "af700959-de1a-499d-837e-298ee3831a01",
    "LocCode": "001",
    "NetAmt": 2000,
    "NetAmtCur": 2000,
    "PayDate": "1970-01-01T00:00:00.000Z",
    "PayNo": "",
    "PayType": "เงินสด",
    "PayTypeId": "1",
    "Post": "P",
    "ReceiveType": null,
    "ReceiveTypeId": "3",
    "Remark": null,
    "RunNumber": 14,
    "SubAmt": 1000,
    "SubAmtCur": 1000,
    "TotalAmt": 1000,
    "TotalAmtCur": 1000,
    "UpdatedBy": "10040371",
    "UpdatedDate": "2023-05-22T11:03:43.053Z",
    "VatAmt": 1000,
    "VatAmtCur": 1000,
    "VatRate": 7,
    "VatType": "VE",
    "WhtAmt": 0,
    "WhtAmtCur": 0
}
  """
  When method POST
  Then status 200
  Then print response
