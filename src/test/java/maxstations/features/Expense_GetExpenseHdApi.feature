Feature: Expense_SaveExpense Api

Scenario: Test Expense SaveExpense
  Given url financeUrl
  Given path "/api/Expense/GetExpenseHd/B/003/001/0dfb8663-7388-4ca1-b491-f3f3fc9925fe"

  When method GET
  Then status 200
  Then print response

@ignore @report=false
Scenario: Test ignore
  Given url "http://abc.xyz"
  Given path "demo"
  When method GET
  Then status 404