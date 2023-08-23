Feature: BranchTax_SaveBranchTax Api

Scenario: Test BranchTax SaveBranchTax
  Given url masterdataUrl
  Given path "/api/Branch/SaveBranchTax"
  Given request
  """
{
    "MasBranchConfig": {
        "BrnCode": "003",
        "CompCode": "B",
        "CreatedBy": "10040371",
        "CreatedDate": null,
        "IsLockMeter": "",
        "IsPos": "",
        "ReportTaxType": "Sell",
        "Trader": "สารภี จตุรลาวัลย์",
        "TraderPosition": "ผู้จัดการแผนกบัญชีต้นทุนอาวุโส",
        "UpdatedBy": "10040371",
        "UpdatedDate": null
    },
    "MasBranchTaxs": [
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-07-18T14:20:50.553",
            "TaxAmt": 7,
            "TaxId": "000001",
            "TaxName": "ดีเซล B7",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
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