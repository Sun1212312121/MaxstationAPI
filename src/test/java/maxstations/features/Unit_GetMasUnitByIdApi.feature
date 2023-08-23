Feature: Unit_GetMasUnitById Api

Scenario: Test Unit GetMasUnitById
  Given url masterdataUrl
  Given path "/api/Unit/GetMasUnitById/001"

  When method GET
  Then status 200
  Then print response
