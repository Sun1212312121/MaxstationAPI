Feature: Receive_GetRemainFinBalanceList Api

Scenario: Test Receive GetRemainFinBalanceList
  Given url financeUrl
  Given path "/api/Receive/GetRemainFinBalanceList"
  Given request
  """
{
    "CompCode": "B",
    "LocCode": "001",
    "BrnCode": "006",
    "DocType": "Invoice,CreditSale,CreditNote,DebitNote",
    "Keyword": null,
    "CustCode": "100009",
    "DocTypeFilter": "TaxInvoice",
    "FromDate": "2023-07-01",
    "ToDate": "2023-07-02"
}
  """
  When method POST
  Then status 200
  Then print response
