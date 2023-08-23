Feature: CashSale SaveCashSale2 Api

  Scenario: Test get document from daily operation
    Given url saleUrl
    Given path "/api/CashSale/SaveCashSale2"
    Given request
    """
{
    "CashSaleHeader": {
        "SalCashsaleDt": [],
        "CompCode": "B",
        "BrnCode": "003",
        "LocCode": "001",
        "DocNo": "CS003-23060008",
        "DocStatus": "Cancel",
        "DocDate": "2023-06-25",
        "RefNo": "ss",
        "QtNo": "",
        "CustName": "",
        "CustAddr1": "",
        "CustAddr2": "",
        "ItemCount": 0,
        "Currency": "THB",
        "CurRate": 1,
        "SubAmt": 72.74,
        "SubAmtCur": 72.74,
        "DiscRate": "",
        "DiscAmt": 0,
        "DiscAmtCur": 0,
        "TotalAmt": 72.74,
        "TotalAmtCur": 72.74,
        "TaxBaseAmt": 67.98,
        "TaxBaseAmtCur": 67.98,
        "VatRate": 0,
        "VatAmt": 4.76,
        "VatAmtCur": 4.76,
        "NetAmt": 72.74,
        "NetAmtCur": 72.74,
        "EmpCode": "ss",
        "EmpName": "",
        "Post": "N",
        "RunNumber": 8,
        "DocPattern": "CS003-2306####",
        "PosNo": "",
        "Guid": "1eeef8f8-8a14-4a8f-b379-7d0af3950e9d",
        "CreatedDate": "2023-07-12T13:30:10.72",
        "CreatedBy": "10040371",
        "UpdatedDate": "2023-07-12T13:32:20.3859849+07:00",
        "UpdatedBy": "10040371"
    },
    "ArrCashSaleDetail": [
        {
            "BrnCode": "003",
            "CompCode": "B",
            "DiscAmt": 0,
            "DiscAmtCur": 0,
            "DiscHdAmt": 0,
            "DiscHdAmtCur": 0,
            "DocNo": "CS003-23060008",
            "IsFree": false,
            "ItemQty": 1,
            "LocCode": "001",
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "RefPrice": 0,
            "RefPriceCur": 0,
            "SeqNo": 1,
            "StockQty": 1,
            "SubAmt": 31.06,
            "SubAmtCur": 31.06,
            "SumItemAmt": 31.06,
            "SumItemAmtCur": 31.06,
            "TaxBaseAmt": 29.03,
            "TaxBaseAmtCur": 29.03,
            "TotalAmt": 31.06,
            "TotalAmtCur": 31.06,
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UnitName": "ลิตร",
            "UnitPrice": 31.06,
            "UnitPriceCur": 31.06,
            "VatAmt": 2.03,
            "VatAmtCur": 2.03,
            "VatRate": 7,
            "VatType": "VI"
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "DiscAmt": 0,
            "DiscAmtCur": 0,
            "DiscHdAmt": 0,
            "DiscHdAmtCur": 0,
            "DocNo": "CS003-23060008",
            "IsFree": false,
            "ItemQty": 1,
            "LocCode": "001",
            "PdId": "000002",
            "PdName": "เบนซิน",
            "RefPrice": 0,
            "RefPriceCur": 0,
            "SeqNo": 2,
            "StockQty": 1,
            "SubAmt": 41.68,
            "SubAmtCur": 41.68,
            "SumItemAmt": 41.68,
            "SumItemAmtCur": 41.68,
            "TaxBaseAmt": 38.95,
            "TaxBaseAmtCur": 38.95,
            "TotalAmt": 41.68,
            "TotalAmtCur": 41.68,
            "UnitBarcode": "000002",
            "UnitId": "001",
            "UnitName": "ลิตร",
            "UnitPrice": 41.68,
            "UnitPriceCur": 41.68,
            "VatAmt": 2.73,
            "VatAmtCur": 2.73,
            "VatRate": 7,
            "VatType": "VI"
        }
    ],
    "QuotationHeader": null,
    "ArrQuotationDetail": null
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