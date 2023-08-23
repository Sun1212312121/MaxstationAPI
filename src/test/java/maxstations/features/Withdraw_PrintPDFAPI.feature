Feature: Withdraw_PrintPDF API

  Scenario: test Withdraw PrintPDF
    Given url reportviewerUrl
    Given path "/Withdraw/PrintPdf"
    Given request
      """
{
    "CompCode": "O",
    "BrnCode": "01L",
    "DocNo": "WD01L-22010020"
}
      """
    When method POST
    Then status 200
    Then print response