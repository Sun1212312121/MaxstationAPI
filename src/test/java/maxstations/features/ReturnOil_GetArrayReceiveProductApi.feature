Feature: ReturnOil_GetArrayReceiveProduct Api

Scenario: Test ReturnOil_GetArrayReceiveProduct
  Given url inventoryUrl
  Given path "/api/ReturnOil/GetArrayReceiveProduct"
  Given request
  """
{
    "BrnCode": "35H",
    "BrnCodeTo": "Z02",
    "BrnNameTo": "",
    "CompCode": "B",
    "CreatedBy": "10040371",
    "CreatedDate": null,
    "DocDate": "2023-07-09T17:00:00.000Z",
    "DocNo": "RTO35H-2307####",
    "DocPattern": "RTO35H-2307####",
    "DocStatus": "New",
    "Guid": "7a3e9705-2bdd-4433-98bc-ae5f9e8fbde1",
    "LocCode": "001",
    "PoNo": "",
    "Post": "N",
    "ReasonDesc": "",
    "ReasonId": "01",
    "RefNo": "",
    "Remark": "",
    "RunNumber": 0,
    "UpdatedBy": "",
    "UpdatedDate": null
}
  """
  When method POST
  Then status 200
  Then print response
