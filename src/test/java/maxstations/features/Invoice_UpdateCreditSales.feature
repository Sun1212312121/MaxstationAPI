Feature: UpdateCreditSales Api

  Scenario: Test get document from daily operation
    Given url saleUrl
    Given path "/api/Invoice/UpdateCreditSales"
    Given request
    """
   {
    "CreditSaleHeader": {
        "salCreditsaleDt": [],
        "compCode": "B",
        "brnCode": "003",
        "locCode": "001",
        "docType": "Invoice",
        "docNo": "INV003-23060001",
        "docStatus": "Active",
        "docDate": "2023-06-25T00:00:00",
        "period": "06/2023",
        "qtNo": null,
        "refNo": "",
        "custCode": "100001",
        "citizenId": "",
        "custName": " น้ำพอง",
        "custAddr1": "สาขาน้ำพอง",
        "custAddr2": "อ.น้ำพอง จ.ขอนแก่น",
        "itemCount": 0,
        "remark": "",
        "currency": "THB",
        "curRate": 1,
        "subAmt": 2,
        "subAmtCur": 2,
        "discRate": "0",
        "discAmt": 0,
        "discAmtCur": 0,
        "totalAmt": 2,
        "totalAmtCur": 2,
        "taxBaseAmt": 2,
        "taxBaseAmtCur": 2,
        "vatRate": 0,
        "vatAmt": 0,
        "vatAmtCur": 0,
        "netAmt": 2,
        "netAmtCur": 2,
        "empCode": null,
        "empName": null,
        "txNo": "",
        "post": "N",
        "runNumber": 1,
        "docPattern": "INV003-2306####",
        "posNo": "",
        "guid": "2da39d11-a540-4ff9-99d7-7d58777ab34d",
        "createdDate": "2023-07-12T14:03:26.19",
        "createdBy": "10040371",
        "updatedDate": "2023-07-12T07:06:32.624Z",
        "updatedBy": "10040371"
    },
    "ArrCreditSaleDetail": [
        {
            "compCode": "B",
            "brnCode": "003",
            "locCode": "001",
            "docType": "Invoice",
            "docNo": "INV003-23060001",
            "seqNo": 1,
            "poNo": null,
            "licensePlate": "",
            "mile": 0,
            "pdId": "90144",
            "pdName": "ค่าเบี้ยปรับจากการชำระล่าช้า",
            "isFree": false,
            "unitId": null,
            "unitBarcode": null,
            "unitName": null,
            "meterStart": 0,
            "meterFinish": 1,
            "itemQty": 1,
            "stockQty": 1,
            "unitPrice": 2,
            "unitPriceCur": 2,
            "refPrice": 0,
            "refPriceCur": 0,
            "sumItemAmt": 2,
            "sumItemAmtCur": 2,
            "discAmt": 0,
            "discAmtCur": 0,
            "discHdAmt": 0,
            "discHdAmtCur": 0,
            "subAmt": 2,
            "subAmtCur": 2,
            "vatType": "NV",
            "vatRate": 0,
            "vatAmt": 0,
            "vatAmtCur": 0,
            "taxBaseAmt": 2,
            "taxBaseAmtCur": 2,
            "totalAmt": 2,
            "totalAmtCur": 2
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