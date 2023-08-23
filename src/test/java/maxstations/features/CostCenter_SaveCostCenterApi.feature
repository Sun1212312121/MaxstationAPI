Feature: CostCenter_SaveCostCenter Api

Scenario: Test CostCenter SaveCostCenter
  Given url masterdataUrl
  Given path "/api/CostCenter/SaveCostCenter"
  Given request
  """
{
    "MasCostCenter": {
        "BrnCode": "003",
        "BrnName": "สถานี สิชล",
        "BrnStatus": "",
        "CompCode": "B",
        "CostCenter": "1111",
        "CreatedBy": "10040371",
        "CreatedDate": null,
        "MapBrnCode": "",
        "ProfitCenter": "2222",
        "UpdatedBy": "10040371",
        "UpdatedDate": null,
        "Guid": "aeddd963-2f49-404f-8be9-419dc86e231d"
    }
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