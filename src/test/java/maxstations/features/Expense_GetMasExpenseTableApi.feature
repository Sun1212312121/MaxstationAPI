Feature: Expense_GetMasExpenseTable Api

Scenario: Test Expense GetMasExpenseTable
  Given url financeUrl
  Given path "/api/Expense/GetMasExpenseTable/Edit/B/003/001/EX003-23030007"

  When method GET
  Then status 200
  Then print response

@ignore @report=false
Scenario: Test ignore
  Given url "http://abc.xyz"
  Given path "demo"
  When method GET
  Then status 404