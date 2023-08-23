Feature: SearchInvoice

  Scenario: Test get document from daily operation
    Given url saleUrl
    Given path "/api/Invoice/SearchInvoice"
    And param COMP_CODE = 'B'
    And param BRN_CODE = '003'
    And param StartDate = '2023-06-24'
    And param EndDate = '2023-06-25'
    And param LOC_CODE = '001'
    And param Page = '1'
    And param ItemsPerPage = '10'
    Given request
    """
     
    """
    When method GET
    Then status 200
    Then print response

  @ignore @report=false
  Scenario: Test ignore
    Given url "http://abc.xyz"
    Given path "demo"
    When method GET
    Then status 404