Feature: Customer_findReportConfig Api

Scenario: Test Customer findReportConfig
  Given url reportUrl3
  Given path "/api/Report/findReportConfig"
  Given request
  """
{
    "Group": "ReportMasCustomer"
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