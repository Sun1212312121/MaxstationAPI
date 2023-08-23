Feature: BranchTax_GetTaxByBranch Api

Scenario: Test BranchTax GetTaxByBranch 
  Given url masterdataUrl
  Given path "/api/Branch/GetTaxByBranch/B/003"
 
  When method GET
  Then status 200
  Then print response

@ignore @report=false
Scenario: Test ignore
  Given url "http://abc.xyz"
  Given path "demo"
  When method GET
  Then status 404