Feature: TransferIn_InsertTransferIn Api

Scenario: Test TransferIn InsertTransferIn
  Given url inventoryUrl
  Given path "/api/TransferIn/InsertTransferIn"
  Given request
  """
{
    "compCode": "B",
    "brnCode": "811",
    "locCode": "001",
    "docNo": "TI811-2205####",
    "docStatus": "New",
    "docDate": "2022-05-20",
    "refNo": "TO15G-22010004",
    "refDate": "2022-05-15T00:00:00",
    "brnCodeFrom": "15G",
    "brnNameFrom": "เชียงดาว2",
    "remark": "",
    "post": "N",
    "runNumber": 0,
    "docPattern": "TI811-2205####",
    "guid": "5d5c95c6-c211-451e-80e1-7b8f040b1fcc",
    "createdDate": null,
    "createdBy": "10040371",
    "updatedDate": null,
    "updatedBy": "",
    "listTransferInDetail": [
        {
            "brnCode": "811",
            "compCode": "B",
            "docNo": "TI811-2205####",
            "itemQty": 1,
            "locCode": "001",
            "pdId": "00218",
            "pdName": "Go! 2T 1 ลิตร",
            "seqNo": 1,
            "stockQty": 1,
            "unitBarcode": "00218",
            "unitId": "040",
            "unitName": "กระป๋อง"
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