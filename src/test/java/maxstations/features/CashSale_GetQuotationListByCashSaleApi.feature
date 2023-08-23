Feature: CashSale GetQuotationListByCashSale API

  Scenario: Test get document from daily operation
    Given url saleUrl
    Given path "/api/CashSale/GetQuotationListByCashSale"
    Given request
    """
      {
          "BrnCode": "35H",
          "CompCode": "B",
          "CreatedBy": "10040371",
          "CreatedDate": null,
          "CurRate": 1,
          "Currency": "THB",
          "CustAddr1": "",
          "CustAddr2": "",
          "CustName": "",
          "DiscAmt": 0,
          "DiscAmtCur": 0,
          "DiscRate": "",
          "DocDate": "2023-06-23T17:00:00.000Z",
          "DocNo": "CS35H-2306####",
          "DocPattern": "CS35H-2306####",
          "DocStatus": "New",
          "EmpCode": "",
          "EmpName": "",
          "Guid": "fffa94ff-c94a-4624-bbc3-7f0a3ad23bb4",
          "ItemCount": 0,
          "LocCode": "001",
          "NetAmt": 0,
          "NetAmtCur": 0,
          "PosNo": "",
          "Post": "N",
          "QtNo": "",
          "RefNo": "",
          "RunNumber": 0,
          "SubAmt": 0,
          "SubAmtCur": 0,
          "TaxBaseAmt": 0,
          "TaxBaseAmtCur": 0,
          "TotalAmt": 0,
          "TotalAmtCur": 0,
          "UpdatedBy": "",
          "UpdatedDate": null,
          "VatAmt": 0,
          "VatAmtCur": 0,
          "VatRate": 0
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