Feature: InsertCreditSales2 Api

  Scenario: Test get document from daily operation

    Given url commonUrl
    Given path "common/api/Auth/GenerateToken"
    Given header ProgramId = clientId
    And header Content-Length = 0
    And header Content-Type = "application/json"
    When method POST
    Then status 200
    Then print response

    Given url saleUrl
    Given path "/api/Invoice/InsertCreditSales2"
    Given header Authorization = response
    Given request
    """
      {
    "creditSaleHeader": {
        "compCode": "B",
        "brnCode": "003",
        "locCode": "001",
        "docType": "Invoice",
        "docNo": "INV003-2306####",
        "docStatus": "New",
        "docDate": "2023-06-25",
        "period": "06/2023",
        "refNo": "test",
        "custCode": "100002",
        "custName": " พะเยา",
        "custAddr1": "สาขาพะเยา",
        "custAddr2": "อ.เมืองพะเยา จ.พะเยา",
        "itemCount": 0,
        "remark": "",
        "currency": "THB",
        "curRate": 1,
        "subAmt": 1,
        "subAmtCur": 1,
        "discRate": "0",
        "discAmt": 0,
        "discAmtCur": 0,
        "totalAmt": 1,
        "totalAmtCur": 1,
        "taxBaseAmt": 1,
        "taxBaseAmtCur": 1,
        "vatRate": 0,
        "vatAmt": 0,
        "vatAmtCur": 0,
        "netAmt": 1,
        "netAmtCur": 1,
        "txNo": "",
        "post": "N",
        "runNumber": 0,
        "docPattern": "INV003-2306####",
        "posNo": "",
        "guid": "a8a7e7f7-3450-4eee-8cba-41ff8cbe0075",
        "createdDate": null,
        "createdBy": "10040371",
        "updatedDate": null,
        "updatedBy": "",
        "citizenId": ""
    },
    "arrCreditSaleDetail": [
        {
            "brnCode": "003",
            "compCode": "B",
            "locCode": "001",
            "docNo": "INV003-2306####",
            "docType": "Invoice",
            "seqNo": 1,
            "pdId": "90173",
            "pdName": "ดอกเบี้ยรับจากธนาคารและอื่นๆ",
            "meterFinish": 1,
            "meterStart": 0,
            "itemQty": 1,
            "subAmt": 1,
            "vatAmt": 0,
            "vatType": "NV",
            "vatRate": 7,
            "taxBaseAmt": 1,
            "unitPrice": 1,
            "totalAmt": 1,
            "discAmt": 0,
            "discHdAmt": 0,
            "sumItemAmt": 1,
            "sumItemAmtCur": 1,
            "subAmtCur": 1,
            "discAmtCur": 0,
            "discHdAmtCur": 0,
            "taxBaseAmtCur": 1,
            "vatAmtCur": 0,
            "totalAmtCur": 1,
            "unitPriceCur": 1,
            "isFree": false,
            "licensePlate": "",
            "mile": 0,
            "stockQty": 1,
            "refPrice": 0,
            "refPriceCur": 0
        }
    ]
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