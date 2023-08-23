Feature: BranchTank_GetDispByBranch Api

Scenario: Test BranchTank GetDispByBranch
  Given url masterdataUrl
  Given path "/api/Branch/GetDispByBranch/B/35H"
 
  When method GET
  Then status 200
  Then print response

@ignore @report=false
Scenario: Test ignore
  Given url "http://abc.xyz"
  Given path "demo"
  When method GET
  Then status 404