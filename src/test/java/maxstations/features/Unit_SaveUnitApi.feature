Feature: Unit_SaveUnit Api

Scenario: Test Unit SaveUnit
  Given url masterdataUrl
  Given path "/api/Unit/SaveUnit"
  Given request
  """
{
    "UnitId": "001",
    "MapUnitId": "F",
    "UnitStatus": "Active",
    "UnitName": "ลิตร",
    "CreatedDate": "2021-03-24T08:10:49.137",
    "CreatedBy": "10040371",
    "UpdatedDate": "2023-05-10T13:43:30.35",
    "UpdatedBy": "10040371"
}
  """
  When method POST
  Then status 200
  Then print response
