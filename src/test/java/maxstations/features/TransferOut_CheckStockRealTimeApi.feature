Feature: TransferOut_GetPattern Api

Scenario: Test TransferOut GetPattern
  Given url inventoryUrl
  Given path "/api/TransferOut/CheckStockRealTime"
  Given request
  """
{
    "BrnCode": "01L",
    "CompCode": "O",
    "DocDate": "2022-01-21",
    "Json": "[{\"PD_ID\":\"08891\",\"UNIT_ID\":\"040\",\"UNIT_BARCODE\":\"08891\",\"ITEM_QTY\":1}]"
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