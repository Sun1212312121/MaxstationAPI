Feature: BranchTank_GetTankByBranch Api

Scenario: Test BranchTank GetTankByBranch
  Given url masterdataUrl
  Given path "/api/Branch/GetTankByBranch/B/35H"
 
  When method GET
  Then status 200
  Then print response

@ignore @report=false
Scenario: Test ignore
  Given url "http://abc.xyz"
  Given path "demo"
  When method GET
  Then status 404