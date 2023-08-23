Feature: BranchTank_SaveBranchTank Api

Scenario: Test BranchTank SaveBranchTank
  Given url masterdataUrl
  Given path "/api/Branch/SaveBranchTank"
  Given request
  """
{
    "MasBranchTanks": [
        {
            "BrnCode": "003",
            "Capacity": 20000,
            "CapacityMin": 1000,
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.703",
            "PdId": "000002",
            "PdName": "เบนซิน",
            "TankId": "01",
            "TankStatus": "Active",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "Capacity": 20000,
            "CapacityMin": 1000,
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.703",
            "PdId": "000010",
            "PdName": "แก๊สโซฮอล์ E20",
            "TankId": "02",
            "TankStatus": "Active",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "Capacity": 20000,
            "CapacityMin": 1000,
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.703",
            "PdId": "000006",
            "PdName": "แก๊สโซฮอล์ 91",
            "TankId": "03",
            "TankStatus": "Active",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "Capacity": 20000,
            "CapacityMin": 1000,
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.703",
            "PdId": "000005",
            "PdName": "แก๊สโซฮอล์ 95",
            "TankId": "04",
            "TankStatus": "Active",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "Capacity": 20000,
            "CapacityMin": 1000,
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.703",
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "TankId": "05",
            "TankStatus": "Active",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "Capacity": 20000,
            "CapacityMin": 1000,
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.703",
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "TankId": "06",
            "TankStatus": "Active",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "Capacity": 20000,
            "CapacityMin": 1000,
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.703",
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "TankId": "07",
            "TankStatus": "Active",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "Capacity": 20000,
            "CapacityMin": 1000,
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.703",
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "TankId": "08",
            "TankStatus": "Active",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "Capacity": 10000,
            "CapacityMin": 500,
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.703",
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "TankId": "09",
            "TankStatus": "Active",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "Capacity": 0,
            "CapacityMin": 0,
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": null,
            "PdId": "",
            "PdName": "",
            "TankId": "10",
            "TankStatus": "Active",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        }
    ],
    "MasBranchDisps": [
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.763",
            "DispId": "0101",
            "DispStatus": "Active",
            "HoseId": 6,
            "MeterMax": 0,
            "PdId": "000002",
            "PdName": "เบนซิน",
            "SerialNo": ".         ",
            "TankId": "01",
            "UnitBarcode": "000002",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.767",
            "DispId": "0102",
            "DispStatus": "Active",
            "HoseId": 5,
            "MeterMax": 0,
            "PdId": "000010",
            "PdName": "แก๊สโซฮอล์ E20",
            "SerialNo": ".         ",
            "TankId": "02",
            "UnitBarcode": "000010",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.77",
            "DispId": "0103",
            "DispStatus": "Active",
            "HoseId": 4,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "05",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.773",
            "DispId": "0104",
            "DispStatus": "Active",
            "HoseId": 3,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "05",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.777",
            "DispId": "0105",
            "DispStatus": "Active",
            "HoseId": 2,
            "MeterMax": 0,
            "PdId": "000010",
            "PdName": "แก๊สโซฮอล์ E20",
            "SerialNo": ".         ",
            "TankId": "02",
            "UnitBarcode": "000010",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.78",
            "DispId": "0106",
            "DispStatus": "Active",
            "HoseId": 1,
            "MeterMax": 0,
            "PdId": "000002",
            "PdName": "เบนซิน",
            "SerialNo": ".         ",
            "TankId": "01",
            "UnitBarcode": "000002",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.783",
            "DispId": "0201",
            "DispStatus": "Active",
            "HoseId": 12,
            "MeterMax": 0,
            "PdId": "000006",
            "PdName": "แก๊สโซฮอล์ 91",
            "SerialNo": ".         ",
            "TankId": "03",
            "UnitBarcode": "000006",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.783",
            "DispId": "0202",
            "DispStatus": "Active",
            "HoseId": 11,
            "MeterMax": 0,
            "PdId": "000005",
            "PdName": "แก๊สโซฮอล์ 95",
            "SerialNo": ".         ",
            "TankId": "04",
            "UnitBarcode": "000005",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.787",
            "DispId": "0203",
            "DispStatus": "Active",
            "HoseId": 10,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "06",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.79",
            "DispId": "0204",
            "DispStatus": "Active",
            "HoseId": 9,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "06",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.793",
            "DispId": "0205",
            "DispStatus": "Active",
            "HoseId": 8,
            "MeterMax": 0,
            "PdId": "000005",
            "PdName": "แก๊สโซฮอล์ 95",
            "SerialNo": ".         ",
            "TankId": "04",
            "UnitBarcode": "000005",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.793",
            "DispId": "0206",
            "DispStatus": "Active",
            "HoseId": 7,
            "MeterMax": 0,
            "PdId": "000006",
            "PdName": "แก๊สโซฮอล์ 91",
            "SerialNo": ".         ",
            "TankId": "03",
            "UnitBarcode": "000006",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.797",
            "DispId": "0301",
            "DispStatus": "Active",
            "HoseId": 16,
            "MeterMax": 0,
            "PdId": "000005",
            "PdName": "แก๊สโซฮอล์ 95",
            "SerialNo": ".         ",
            "TankId": "04",
            "UnitBarcode": "000005",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.8",
            "DispId": "0302",
            "DispStatus": "Active",
            "HoseId": 15,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "07",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.803",
            "DispId": "0303",
            "DispStatus": "Active",
            "HoseId": 14,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "07",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.803",
            "DispId": "0304",
            "DispStatus": "Active",
            "HoseId": 13,
            "MeterMax": 0,
            "PdId": "000005",
            "PdName": "แก๊สโซฮอล์ 95",
            "SerialNo": ".         ",
            "TankId": "04",
            "UnitBarcode": "000005",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.807",
            "DispId": "0401",
            "DispStatus": "Hold",
            "HoseId": 18,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "08",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.81",
            "DispId": "0402",
            "DispStatus": "Hold",
            "HoseId": 17,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "08",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.813",
            "DispId": "0501",
            "DispStatus": "Active",
            "HoseId": 24,
            "MeterMax": 0,
            "PdId": "000002",
            "PdName": "เบนซิน",
            "SerialNo": ".         ",
            "TankId": "01",
            "UnitBarcode": "000002",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.817",
            "DispId": "0502",
            "DispStatus": "Active",
            "HoseId": 23,
            "MeterMax": 0,
            "PdId": "000010",
            "PdName": "แก๊สโซฮอล์ E20",
            "SerialNo": ".         ",
            "TankId": "02",
            "UnitBarcode": "000010",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.82",
            "DispId": "0503",
            "DispStatus": "Active",
            "HoseId": 22,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "05",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.823",
            "DispId": "0504",
            "DispStatus": "Active",
            "HoseId": 21,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "05",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.823",
            "DispId": "0505",
            "DispStatus": "Active",
            "HoseId": 20,
            "MeterMax": 0,
            "PdId": "000010",
            "PdName": "แก๊สโซฮอล์ E20",
            "SerialNo": ".         ",
            "TankId": "02",
            "UnitBarcode": "000010",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.827",
            "DispId": "0506",
            "DispStatus": "Active",
            "HoseId": 19,
            "MeterMax": 0,
            "PdId": "000002",
            "PdName": "เบนซิน",
            "SerialNo": ".         ",
            "TankId": "01",
            "UnitBarcode": "000002",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.83",
            "DispId": "0601",
            "DispStatus": "Active",
            "HoseId": 30,
            "MeterMax": 0,
            "PdId": "000006",
            "PdName": "แก๊สโซฮอล์ 91",
            "SerialNo": ".         ",
            "TankId": "03",
            "UnitBarcode": "000006",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.833",
            "DispId": "0602",
            "DispStatus": "Active",
            "HoseId": 29,
            "MeterMax": 0,
            "PdId": "000005",
            "PdName": "แก๊สโซฮอล์ 95",
            "SerialNo": ".         ",
            "TankId": "04",
            "UnitBarcode": "000005",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.837",
            "DispId": "0603",
            "DispStatus": "Active",
            "HoseId": 28,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "06",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.84",
            "DispId": "0604",
            "DispStatus": "Active",
            "HoseId": 27,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "06",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.847",
            "DispId": "0605",
            "DispStatus": "Active",
            "HoseId": 26,
            "MeterMax": 0,
            "PdId": "000005",
            "PdName": "แก๊สโซฮอล์ 95",
            "SerialNo": ".         ",
            "TankId": "04",
            "UnitBarcode": "000005",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.85",
            "DispId": "0606",
            "DispStatus": "Active",
            "HoseId": 25,
            "MeterMax": 0,
            "PdId": "000006",
            "PdName": "แก๊สโซฮอล์ 91",
            "SerialNo": ".         ",
            "TankId": "03",
            "UnitBarcode": "000006",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.853",
            "DispId": "0701",
            "DispStatus": "Active",
            "HoseId": 34,
            "MeterMax": 0,
            "PdId": "000006",
            "PdName": "แก๊สโซฮอล์ 91",
            "SerialNo": ".         ",
            "TankId": "03",
            "UnitBarcode": "000006",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.853",
            "DispId": "0702",
            "DispStatus": "Active",
            "HoseId": 33,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "07",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.857",
            "DispId": "0703",
            "DispStatus": "Active",
            "HoseId": 32,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "07",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.86",
            "DispId": "0704",
            "DispStatus": "Active",
            "HoseId": 31,
            "MeterMax": 0,
            "PdId": "000006",
            "PdName": "แก๊สโซฮอล์ 91",
            "SerialNo": ".         ",
            "TankId": "03",
            "UnitBarcode": "000006",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.863",
            "DispId": "0801",
            "DispStatus": "Active",
            "HoseId": 36,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "08",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.867",
            "DispId": "0802",
            "DispStatus": "Active",
            "HoseId": 35,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "08",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.867",
            "DispId": "0901",
            "DispStatus": "Active",
            "HoseId": 42,
            "MeterMax": 0,
            "PdId": "000002",
            "PdName": "เบนซิน",
            "SerialNo": ".         ",
            "TankId": "01",
            "UnitBarcode": "000002",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.87",
            "DispId": "0902",
            "DispStatus": "Active",
            "HoseId": 41,
            "MeterMax": 0,
            "PdId": "000010",
            "PdName": "แก๊สโซฮอล์ E20",
            "SerialNo": ".         ",
            "TankId": "02",
            "UnitBarcode": "000010",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.873",
            "DispId": "0903",
            "DispStatus": "Active",
            "HoseId": 40,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "05",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.873",
            "DispId": "0904",
            "DispStatus": "Active",
            "HoseId": 39,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "05",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.877",
            "DispId": "0905",
            "DispStatus": "Active",
            "HoseId": 38,
            "MeterMax": 0,
            "PdId": "000010",
            "PdName": "แก๊สโซฮอล์ E20",
            "SerialNo": ".         ",
            "TankId": "02",
            "UnitBarcode": "000010",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.88",
            "DispId": "0906",
            "DispStatus": "Active",
            "HoseId": 37,
            "MeterMax": 0,
            "PdId": "000002",
            "PdName": "เบนซิน",
            "SerialNo": ".         ",
            "TankId": "01",
            "UnitBarcode": "000002",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.88",
            "DispId": "1",
            "DispStatus": "Active",
            "HoseId": 1,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": "2",
            "TankId": "001",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.887",
            "DispId": "1001",
            "DispStatus": "Active",
            "HoseId": 48,
            "MeterMax": 0,
            "PdId": "000006",
            "PdName": "แก๊สโซฮอล์ 91",
            "SerialNo": ".         ",
            "TankId": "03",
            "UnitBarcode": "000006",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.887",
            "DispId": "1002",
            "DispStatus": "Active",
            "HoseId": 47,
            "MeterMax": 0,
            "PdId": "000005",
            "PdName": "แก๊สโซฮอล์ 95",
            "SerialNo": ".         ",
            "TankId": "04",
            "UnitBarcode": "000005",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.89",
            "DispId": "1003",
            "DispStatus": "Active",
            "HoseId": 46,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "06",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.893",
            "DispId": "1004",
            "DispStatus": "Active",
            "HoseId": 45,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "06",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.897",
            "DispId": "1005",
            "DispStatus": "Active",
            "HoseId": 44,
            "MeterMax": 0,
            "PdId": "000005",
            "PdName": "แก๊สโซฮอล์ 95",
            "SerialNo": ".         ",
            "TankId": "04",
            "UnitBarcode": "000005",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.9",
            "DispId": "1006",
            "DispStatus": "Active",
            "HoseId": 43,
            "MeterMax": 0,
            "PdId": "000006",
            "PdName": "แก๊สโซฮอล์ 91",
            "SerialNo": ".         ",
            "TankId": "03",
            "UnitBarcode": "000006",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.9",
            "DispId": "1101",
            "DispStatus": "Active",
            "HoseId": 52,
            "MeterMax": 0,
            "PdId": "000010",
            "PdName": "แก๊สโซฮอล์ E20",
            "SerialNo": ".         ",
            "TankId": "02",
            "UnitBarcode": "000010",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
        },
        {
            "BrnCode": "003",
            "CompCode": "B",
            "CreatedBy": "10040371",
            "CreatedDate": "2023-05-12T10:03:04.903",
            "DispId": "1102",
            "DispStatus": "Active",
            "HoseId": 51,
            "MeterMax": 0,
            "PdId": "000001",
            "PdName": "ดีเซล B7",
            "SerialNo": ".         ",
            "TankId": "07",
            "UnitBarcode": "000001",
            "UnitId": "001",
            "UpdatedBy": "10040371",
            "UpdatedDate": null
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