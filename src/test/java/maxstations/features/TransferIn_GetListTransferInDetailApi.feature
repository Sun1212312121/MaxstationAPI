Feature: TransferIn_GetListTransferInDetail Api

Scenario: Test TransferIn GetListTransferInDetail
  Given url inventoryUrl
  Given path "/api/TransferIn/GetListTransferInDetail"
  Given request
  """
{
    "compCode": "O",
    "brnCode": "01L",
    "locCode": "005",
    "docNo": "TI01L-22010001",
    "docStatus": "Active",
    "docDate": "2022-01-11T00:00:00",
    "refNo": "TO02L-22010002",
    "refDate": "2022-01-11T00:00:00",
    "brnCodeFrom": "02L",
    "brnNameFrom": "เชียงใหม่7",
    "remark": "",
    "post": "P",
    "runNumber": 1,
    "docPattern": "TI01L-2201####",
    "guid": "da086171-5c90-4eda-93a2-6a15f9b2b099",
    "createdDate": "2022-01-12T10:26:29.253",
    "createdBy": "63011569",
    "updatedDate": "2022-01-12T11:04:08.88",
    "updatedBy": "10040371",
    "listTransferInDetail": []
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