Feature: ReturnOil_GetArrayOilTerminal Api

Scenario: Test ReturnOil GetArrayOilTerminal
  Given url inventoryUrl
  * def query = {CompCode:'B'}
  Given path "/api/ReturnOil/GetArrayOilTerminal"
 And params query
  When method GET
  Then status 200
  Then print response
    