Feature: Expense_SaveExpense Api

Scenario: Test Expense SaveExpense
  Given url financeUrl
  Given path "/api/Expense/SaveExpense"
  Given request
  """
{
    "FinExpenseHd": {
        "CompCode": "B",
        "BrnCode": "003",
        "LocCode": "001",
        "DocStatus": "Active",
        "DocDate": "2023-04-25T00:00:00",
        "WorkType": "T",
        "WorkStart": "10:14",
        "WorkFinish": "00:14",
        "Remark": "aaaaaaaaaa",
        "DocNo": "EX003-23040008",
        "DocPattern": "EX003-2304####",
        "CreatedBy": "10040371"
    },
    "ExpenseTables": [
        {
            "Id": "0100",
            "Header": "พนักงานเงินเดือน",
            "Body": [
                {
                    "CategoryId": "0101",
                    "IndexListId": 0,
                    "Title": "เงินวันและค่าตอบแทน พนักงานรายเดือน",
                    "Qty": 16000,
                    "DisabledQty": "Y",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "จำนวนพนักงาน",
                    "Number": 1,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 2
                },
                {
                    "CategoryId": "0102",
                    "IndexListId": 1,
                    "Title": "กรอบจำนวนพนักงาน",
                    "Qty": 0,
                    "DisabledQty": "N",
                    "LockData": "",
                    "Unit": "คน",
                    "Data": "ชม. OT",
                    "Number": 2,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 3
                },
                {
                    "CategoryId": "0103",
                    "IndexListId": 2,
                    "Title": "OT ต่อชั่วโมง (1 แรง)",
                    "Qty": 66.67,
                    "DisabledQty": "Y",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "ชม. OT",
                    "Number": 3,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 4
                },
                {
                    "CategoryId": "0104",
                    "IndexListId": 3,
                    "Title": "OT ต่อชั่วโมง (1.5 แรง)",
                    "Qty": 100,
                    "DisabledQty": "Y",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "ชม. OT",
                    "Number": 4,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 5
                },
                {
                    "CategoryId": "0105",
                    "IndexListId": 4,
                    "Title": "OT ต่อชั่วโมง (2 แรง)",
                    "Qty": 133.33,
                    "DisabledQty": "Y",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "ชม. OT",
                    "Number": 5,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 6
                },
                {
                    "CategoryId": "0106",
                    "IndexListId": 5,
                    "Title": "OT ต่อชั่วโมง (3 แรง)",
                    "Qty": 200,
                    "DisabledQty": "Y",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "ชม. OT",
                    "Number": 6,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 7
                }
            ],
            "IsExpanded": true
        },
        {
            "Id": "0200",
            "Header": "พนักงานรายวัน",
            "Body": [
                {
                    "CategoryId": "0201",
                    "IndexListId": 0,
                    "Title": "เงินวันและค่าตอบแทนพนักงานรายวัน",
                    "Qty": 325,
                    "DisabledQty": "N",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "จำนวนพนักงาน",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 9
                },
                {
                    "CategoryId": "0202",
                    "IndexListId": 1,
                    "Title": "กรอบจำนวนพนักงาน",
                    "Qty": 0,
                    "DisabledQty": "N",
                    "LockData": "",
                    "Unit": "คน",
                    "Data": "จำนวนพนักงาน",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 10
                },
                {
                    "CategoryId": "0203",
                    "IndexListId": 2,
                    "Title": "OT ต่อชั่วโมง (1 แรง)",
                    "Qty": 40.63,
                    "DisabledQty": "Y",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "ชม. OT",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 11
                },
                {
                    "CategoryId": "0204",
                    "IndexListId": 3,
                    "Title": "OT ต่อชั่วโมง (1.5 แรง)",
                    "Qty": 60.94,
                    "DisabledQty": "Y",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "ชม. OT",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 12
                },
                {
                    "CategoryId": "0205",
                    "IndexListId": 4,
                    "Title": "OT ต่อชั่วโมง (2 แรง)",
                    "Qty": 81.25,
                    "DisabledQty": "Y",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "ชม. OT",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 13
                },
                {
                    "CategoryId": "0206",
                    "IndexListId": 5,
                    "Title": "OT ต่อชั่วโมง (3 แรง)",
                    "Qty": 121.88,
                    "DisabledQty": "Y",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "ชม. OT",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 14
                }
            ],
            "IsExpanded": true
        },
        {
            "Id": "0300",
            "Header": "น้ำมันเบิกใช้",
            "Body": [
                {
                    "CategoryId": "0301",
                    "IndexListId": 0,
                    "Title": "ค่าน้ำมันรถยนต์(รถส่วนตัว) ต่อ กม.",
                    "Qty": 0,
                    "DisabledQty": "",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "จำนวนกม.",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 16
                },
                {
                    "CategoryId": "0302",
                    "IndexListId": 1,
                    "Title": "เบิกใช้ในสถานีบริการ ราคาน้ำมันต่อลิตร",
                    "Qty": 0,
                    "DisabledQty": "",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "จำนวนน้ำมัน (ลิตร)",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 17
                }
            ],
            "IsExpanded": true
        },
        {
            "Id": "0400",
            "Header": "ค่าเช่าที่พัก",
            "Body": [
                {
                    "CategoryId": "0401",
                    "IndexListId": 0,
                    "Title": "ค่าเช่ารวมทุกห้อง",
                    "Qty": 0,
                    "DisabledQty": "",
                    "LockData": "",
                    "Unit": "",
                    "Data": "ค่าเช่า(บาท)",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 19
                },
                {
                    "CategoryId": "0402",
                    "IndexListId": 1,
                    "Title": "ค่าเช่าห้อง",
                    "Qty": 0,
                    "DisabledQty": "",
                    "LockData": "",
                    "Unit": "",
                    "Data": "จำนวนห้อง",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 20
                }
            ],
            "IsExpanded": true
        },
        {
            "Id": "0500",
            "Header": "เงินสดย่อย",
            "Body": [
                {
                    "CategoryId": "0501",
                    "IndexListId": 0,
                    "Title": "ค่าเครื่องเขียนแบบพิมพ์และวัสดุสิ้นเปลือง",
                    "Qty": 0,
                    "DisabledQty": "",
                    "LockData": "Y",
                    "Unit": "",
                    "Data": "ค่าใช้จ่ายที่เกิดแต่ละวัน(บาท)",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 22
                },
                {
                    "CategoryId": "0502",
                    "IndexListId": 1,
                    "Title": "ค่าซ่อมแซม (กรณีซ่อมเอง หรือช่างในพื้นที่)",
                    "Qty": 0,
                    "DisabledQty": "",
                    "LockData": "Y",
                    "Unit": "",
                    "Data": "ค่าใช้จ่ายที่เกิดแต่ละวัน(บาท)",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 23
                }
            ],
            "IsExpanded": true
        },
        {
            "Id": "0600",
            "Header": "ค่าไฟฟ้า",
            "Body": [
                {
                    "CategoryId": "0601",
                    "IndexListId": 0,
                    "Title": "ค่าไฟฟ้ารวม (ค่าไฟต่อ Unit)",
                    "Qty": 0,
                    "DisabledQty": "",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "เลขมิเตอร์",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 25
                },
                {
                    "CategoryId": "0602",
                    "IndexListId": 1,
                    "Title": "ค่าไฟฟ้า Punthai (ค่าไฟต่อ Unit)",
                    "Qty": 0,
                    "DisabledQty": "",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "เลขมิเตอร์",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 26
                },
                {
                    "CategoryId": "0603",
                    "IndexListId": 2,
                    "Title": "ค่าไฟฟ้า Max Mart (ค่าไฟต่อ Unit)",
                    "Qty": 0,
                    "DisabledQty": "",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "เลขมิเตอร์",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 27
                },
                {
                    "CategoryId": "0604",
                    "IndexListId": 3,
                    "Title": "ค่าไฟฟ้า Gas Shop (ค่าไฟต่อ Unit)",
                    "Qty": 0,
                    "DisabledQty": "",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "เลขมิเตอร์",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 28
                }
            ],
            "IsExpanded": true
        },
        {
            "Id": "0700",
            "Header": "ค่าน้ำประปา/บาดาล",
            "Body": [
                {
                    "CategoryId": "0701",
                    "IndexListId": 0,
                    "Title": "ค่าน้ำประปา/บาดาล รวม (ค่าน้ำต่อ Unit)",
                    "Qty": 0,
                    "DisabledQty": "N",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "เลขมิเตอร์",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 30
                },
                {
                    "CategoryId": "0702",
                    "IndexListId": 1,
                    "Title": "ค่าน้ำประปา/บาดาล Punthai (ค่าน้ำต่อ Unit)",
                    "Qty": 0,
                    "DisabledQty": "N",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "เลขมิเตอร์",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 31
                },
                {
                    "CategoryId": "0703",
                    "IndexListId": 2,
                    "Title": "ค่าน้ำประปา/บาดาล Max Mart (ค่าน้ำต่อ Unit)",
                    "Qty": 0,
                    "DisabledQty": "N",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "เลขมิเตอร์",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 32
                },
                {
                    "CategoryId": "0704",
                    "IndexListId": 3,
                    "Title": "ค่าน้ำประปา/บาดาล Gas Shop (ค่าน้ำต่อ Unit)",
                    "Qty": 0,
                    "DisabledQty": "N",
                    "LockData": "",
                    "Unit": "บาท",
                    "Data": "เลขมิเตอร์",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 33
                }
            ],
            "IsExpanded": true
        },
        {
            "Id": "0800",
            "Header": "ค่ากิจกรรมส่งเสริมการขาย",
            "Body": [
                {
                    "CategoryId": "0801",
                    "IndexListId": 0,
                    "Title": "ค่ากิจกรรมส่งเสริมการขาย",
                    "Qty": 0,
                    "DisabledQty": "",
                    "LockData": "Y",
                    "Unit": "บาท",
                    "Data": "ค่าใช้จ่ายที่เกิดแต่ละวัน",
                    "Number": null,
                    "IsDelete": false,
                    "Delete": null,
                    "SeqNo": 35
                }
            ],
            "IsExpanded": true
        }
    ],
    "ExpenseEssTables": [
        {
            "Id": 0,
            "EssNumber": "ss",
            "EssDetail": "dd",
            "Delete": "<i class=\"fa fa-trash\"></i>"
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