Feature: TransferIn_UpdateTransfer Api

Scenario: Test TransferIn UpdateTransfer
  Given url inventoryUrl
  Given path "/api/TransferIn/UpdateTransferIn"
  Given request
  """
{
    "invTraninDt": [
        {
            "compCode": "B",
            "brnCode": "811",
            "locCode": "001",
            "docNo": "TI811-2205####",
            "seqNo": 1,
            "pdId": "00218",
            "pdName": "Go! 2T 1 ลิตร",
            "unitId": "string",
            "unitBarcode": "string",
            "unitName": "string",
            "itemQty": 1,
            "stockQty": 10
        }
    ],
    "compCode": "B",
    "brnCode": "811",
    "locCode": "001",
    "docNo": "TI811-2205####",
    "docStatus": "Active",
    "docDate": "2023-07-14T06:06:28.617Z",
    "refNo": "TO15G-22010004",
    "refDate": "2023-07-14T06:06:28.617Z",
    "brnCodeFrom": "15G",
    "brnNameFrom": "เชียงดาว2",
    "remark": "",
    "post": "N",
    "runNumber": 0,
    "docPattern": "TI811-2205####",
    "guid": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    "createdDate": "2023-07-14T06:06:28.617Z",
    "createdBy": "10040371",
    "updatedDate": "2023-07-14T06:06:28.617Z",
    "updatedBy": "10040371",
    "listTransferInDetail": [
        {
            "compCode": "B",
            "brnCode": "811",
            "locCode": "001",
            "docNo": "TI811-2205####",
            "seqNo": 1,
            "pdId": "00218",
            "pdName": "Go! 2T 1 ลิตร",
            "unitId": "string",
            "unitBarcode": "string",
            "unitName": "string",
            "itemQty": 1,
            "stockQty": 10
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