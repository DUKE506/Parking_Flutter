class ParkingRepository {
  Map<String, dynamic> datas = {
    'parking': [
      {
        'id': 1,
        'type': 'RESIDENT',
        'vehicleNumber': '01가 1234',
        'ownerName': '홍길동',
        'createdAt': '2025-01-08 07:54:24'
      },
      {
        'id': 2,
        'type': 'OUTSIDER',
        'vehicleNumber': '12나 5678',
        'ownerName': '김철수',
        'createdAt': '2025-01-08 08:20:15'
      },
      {
        'id': 3,
        'type': 'VISIT',
        'vehicleNumber': '34다 9101',
        'ownerName': '이영희',
        'createdAt': '2025-01-08 08:35:42'
      },
      {
        'id': 4,
        'type': 'RESIDENT',
        'vehicleNumber': '45라 2345',
        'ownerName': '박문수',
        'createdAt': '2025-01-08 09:12:30'
      },
      {
        'id': 5,
        'type': 'VISIT',
        'vehicleNumber': '56마 6789',
        'ownerName': '최자영',
        'createdAt': '2025-01-08 09:45:50'
      },
      {
        'id': 6,
        'type': 'OUTSIDER',
        'vehicleNumber': '67바 1234',
        'ownerName': '정도전',
        'createdAt': '2025-01-08 10:15:20'
      },
      {
        'id': 7,
        'type': 'RESIDENT',
        'vehicleNumber': '78사 5678',
        'ownerName': '이순신',
        'createdAt': '2025-01-08 10:32:45'
      },
      {
        'id': 8,
        'type': 'OUTSIDER',
        'vehicleNumber': '89아 9101',
        'ownerName': '장보고',
        'createdAt': '2025-01-08 11:05:15'
      },
      {
        'id': 9,
        'type': 'VISIT',
        'vehicleNumber': '90자 2345',
        'ownerName': '강감찬',
        'createdAt': '2025-01-08 11:45:00'
      },
      {
        'id': 10,
        'type': 'RESIDENT',
        'vehicleNumber': '01차 6789',
        'ownerName': '유관순',
        'createdAt': '2025-01-08 12:10:30'
      },
      {
        'id': 11,
        'type': 'VISIT',
        'vehicleNumber': '23카 1234',
        'ownerName': '김유신',
        'createdAt': '2025-01-08 12:40:15'
      },
      {
        'id': 12,
        'type': 'OUTSIDER',
        'vehicleNumber': '34타 5678',
        'ownerName': '신사임당',
        'createdAt': '2025-01-08 13:05:42'
      },
      {
        'id': 13,
        'type': 'RESIDENT',
        'vehicleNumber': '45파 9101',
        'ownerName': '안중근',
        'createdAt': '2025-01-08 13:35:50'
      },
      {
        'id': 14,
        'type': 'VISIT',
        'vehicleNumber': '56하 2345',
        'ownerName': '윤봉길',
        'createdAt': '2025-01-08 14:10:20'
      },
      {
        'id': 15,
        'type': 'OUTSIDER',
        'vehicleNumber': '67가 6789',
        'ownerName': '권율',
        'createdAt': '2025-01-08 14:35:00'
      },
      {
        'id': 16,
        'type': 'RESIDENT',
        'vehicleNumber': '78나 1234',
        'ownerName': '이성계',
        'createdAt': '2025-01-08 15:05:15'
      },
      {
        'id': 17,
        'type': 'VISIT',
        'vehicleNumber': '89다 5678',
        'ownerName': '세종대왕',
        'createdAt': '2025-01-08 15:40:30'
      },
      {
        'id': 18,
        'type': 'OUTSIDER',
        'vehicleNumber': '90라 9101',
        'ownerName': '장영실',
        'createdAt': '2025-01-08 16:10:50'
      },
      {
        'id': 19,
        'type': 'RESIDENT',
        'vehicleNumber': '12마 2345',
        'ownerName': '김수혁',
        'createdAt': '2025-01-08 16:45:15'
      },
      {
        'id': 20,
        'type': 'VISIT',
        'vehicleNumber': '34바 6789',
        'ownerName': '김채희',
        'createdAt': '2025-01-08 17:05:42'
      },
    ],
    'resident': [
      {
        'id': 1,
        'vehicleNumber': '08가 4861',
        'state': 'IN',
      },
      {
        'id': 2,
        'vehicleNumber': '12나 3456',
        'state': 'OUT',
      },
      {
        'id': 3,
        'vehicleNumber': '34다 7890',
        'state': 'IN',
      },
      {
        'id': 4,
        'vehicleNumber': '56라 1234',
        'state': 'OUT',
      },
      {
        'id': 5,
        'vehicleNumber': '78마 5678',
        'state': 'IN',
      },
      {
        'id': 6,
        'vehicleNumber': '90바 9101',
        'state': 'OUT',
      },
      {
        'id': 7,
        'vehicleNumber': '23사 2345',
        'state': 'IN',
      },
      {
        'id': 8,
        'vehicleNumber': '45아 6789',
        'state': 'OUT',
      },
      {
        'id': 9,
        'vehicleNumber': '67자 3456',
        'state': 'IN',
      },
      {
        'id': 10,
        'vehicleNumber': '89차 7890',
        'state': 'OUT',
      },
      {
        'id': 11,
        'vehicleNumber': '12카 1234',
        'state': 'IN',
      },
      {
        'id': 12,
        'vehicleNumber': '34타 5678',
        'state': 'OUT',
      },
      {
        'id': 13,
        'vehicleNumber': '56파 9101',
        'state': 'IN',
      },
      {
        'id': 14,
        'vehicleNumber': '78하 2345',
        'state': 'OUT',
      },
      {
        'id': 15,
        'vehicleNumber': '90가 6789',
        'state': 'IN',
      },
      {
        'id': 16,
        'vehicleNumber': '23나 3456',
        'state': 'OUT',
      },
      {
        'id': 17,
        'vehicleNumber': '45다 7890',
        'state': 'IN',
      },
      {
        'id': 18,
        'vehicleNumber': '67라 1234',
        'state': 'OUT',
      },
      {
        'id': 19,
        'vehicleNumber': '89마 5678',
        'state': 'IN',
      },
      {
        'id': 20,
        'vehicleNumber': '12바 9101',
        'state': 'OUT',
      },
      {'id': 21, 'vehicleNumber': '67다 1234', 'state': 'IN'},
      {'id': 22, 'vehicleNumber': '89라 5678', 'state': 'OUT'},
      {'id': 23, 'vehicleNumber': '12마 9101', 'state': 'IN'},
      {'id': 24, 'vehicleNumber': '34바 2345', 'state': 'OUT'},
      {'id': 25, 'vehicleNumber': '56사 6789', 'state': 'IN'},
      {'id': 26, 'vehicleNumber': '78아 3456', 'state': 'OUT'},
      {'id': 27, 'vehicleNumber': '90자 7890', 'state': 'IN'},
      {'id': 28, 'vehicleNumber': '23차 1234', 'state': 'OUT'},
      {'id': 29, 'vehicleNumber': '45카 5678', 'state': 'IN'},
      {'id': 30, 'vehicleNumber': '67타 9101', 'state': 'OUT'},
      {'id': 31, 'vehicleNumber': '89파 2345', 'state': 'IN'},
      {'id': 32, 'vehicleNumber': '12하 6789', 'state': 'OUT'},
      {'id': 33, 'vehicleNumber': '34가 3456', 'state': 'IN'},
      {'id': 34, 'vehicleNumber': '56나 7890', 'state': 'OUT'},
      {'id': 35, 'vehicleNumber': '78다 1234', 'state': 'IN'},
      {'id': 36, 'vehicleNumber': '90라 5678', 'state': 'OUT'},
      {'id': 37, 'vehicleNumber': '23마 9101', 'state': 'IN'},
      {'id': 38, 'vehicleNumber': '45바 2345', 'state': 'OUT'},
      {'id': 39, 'vehicleNumber': '67사 6789', 'state': 'IN'},
      {'id': 40, 'vehicleNumber': '89아 3456', 'state': 'OUT'},
      {'id': 41, 'vehicleNumber': '12자 7890', 'state': 'IN'},
      {'id': 42, 'vehicleNumber': '34차 1234', 'state': 'OUT'},
      {'id': 43, 'vehicleNumber': '56카 5678', 'state': 'IN'},
      {'id': 44, 'vehicleNumber': '78타 9101', 'state': 'OUT'},
      {'id': 45, 'vehicleNumber': '90파 2345', 'state': 'IN'},
      {'id': 46, 'vehicleNumber': '23하 6789', 'state': 'OUT'},
      {'id': 47, 'vehicleNumber': '45가 3456', 'state': 'IN'},
      {'id': 48, 'vehicleNumber': '67나 7890', 'state': 'OUT'},
      {'id': 49, 'vehicleNumber': '89다 1234', 'state': 'IN'},
      {'id': 50, 'vehicleNumber': '12라 5678', 'state': 'OUT'},
      {'id': 51, 'vehicleNumber': '34마 9101', 'state': 'IN'},
      {'id': 52, 'vehicleNumber': '56바 2345', 'state': 'OUT'},
      {'id': 53, 'vehicleNumber': '78사 6789', 'state': 'IN'},
      {'id': 54, 'vehicleNumber': '90아 3456', 'state': 'OUT'},
      {'id': 55, 'vehicleNumber': '23자 7890', 'state': 'IN'},
      {'id': 56, 'vehicleNumber': '45차 1234', 'state': 'OUT'},
      {'id': 57, 'vehicleNumber': '67카 5678', 'state': 'IN'},
      {'id': 58, 'vehicleNumber': '89타 9101', 'state': 'OUT'},
      {'id': 59, 'vehicleNumber': '12파 2345', 'state': 'IN'},
      {'id': 60, 'vehicleNumber': '34하 6789', 'state': 'OUT'},
      {'id': 61, 'vehicleNumber': '56가 3456', 'state': 'IN'},
      {'id': 62, 'vehicleNumber': '78나 7890', 'state': 'OUT'},
      {'id': 63, 'vehicleNumber': '90다 1234', 'state': 'IN'},
      {'id': 64, 'vehicleNumber': '23라 5678', 'state': 'OUT'},
      {'id': 65, 'vehicleNumber': '45마 9101', 'state': 'IN'},
      {'id': 66, 'vehicleNumber': '67바 2345', 'state': 'OUT'},
      {'id': 67, 'vehicleNumber': '89사 6789', 'state': 'IN'},
      {'id': 68, 'vehicleNumber': '12아 3456', 'state': 'OUT'},
      {'id': 69, 'vehicleNumber': '34자 7890', 'state': 'IN'},
      {'id': 70, 'vehicleNumber': '56차 1234', 'state': 'OUT'},
      {'id': 71, 'vehicleNumber': '78카 5678', 'state': 'IN'},
      {'id': 72, 'vehicleNumber': '90타 9101', 'state': 'OUT'},
      {'id': 73, 'vehicleNumber': '23파 2345', 'state': 'IN'},
      {'id': 74, 'vehicleNumber': '45하 6789', 'state': 'OUT'},
      {'id': 75, 'vehicleNumber': '67가 3456', 'state': 'IN'},
      {'id': 76, 'vehicleNumber': '89나 7890', 'state': 'OUT'},
      {'id': 77, 'vehicleNumber': '12다 1234', 'state': 'IN'},
      {'id': 78, 'vehicleNumber': '34라 5678', 'state': 'OUT'},
      {'id': 79, 'vehicleNumber': '56마 9101', 'state': 'IN'},
      {'id': 80, 'vehicleNumber': '78바 2345', 'state': 'OUT'},
      {'id': 81, 'vehicleNumber': '90사 6789', 'state': 'IN'},
      {'id': 82, 'vehicleNumber': '23아 3456', 'state': 'OUT'},
      {'id': 83, 'vehicleNumber': '45자 7890', 'state': 'IN'},
      {'id': 84, 'vehicleNumber': '67차 1234', 'state': 'OUT'},
      {'id': 85, 'vehicleNumber': '89카 5678', 'state': 'IN'},
      {'id': 86, 'vehicleNumber': '12타 9101', 'state': 'OUT'},
      {'id': 87, 'vehicleNumber': '34파 2345', 'state': 'IN'},
      {'id': 88, 'vehicleNumber': '56하 6789', 'state': 'OUT'},
      {'id': 89, 'vehicleNumber': '78가 3456', 'state': 'IN'},
      {'id': 90, 'vehicleNumber': '90나 7890', 'state': 'OUT'},
      {'id': 91, 'vehicleNumber': '23다 1234', 'state': 'IN'},
      {'id': 92, 'vehicleNumber': '45라 5678', 'state': 'OUT'},
      {'id': 93, 'vehicleNumber': '67마 9101', 'state': 'IN'},
      {'id': 94, 'vehicleNumber': '89바 2345', 'state': 'OUT'},
      {'id': 95, 'vehicleNumber': '12사 6789', 'state': 'IN'},
      {'id': 96, 'vehicleNumber': '34아 3456', 'state': 'OUT'},
      {'id': 97, 'vehicleNumber': '56자 7890', 'state': 'IN'},
      {'id': 98, 'vehicleNumber': '78차 1234', 'state': 'OUT'},
      {'id': 99, 'vehicleNumber': '90카 5678', 'state': 'IN'},
      {'id': 100, 'vehicleNumber': '23타 9101', 'state': 'OUT'},
    ]
  };

  Future<List<Map<String, dynamic>>> getParkigList(String category) async {
    await Future.delayed(Duration(milliseconds: 0));
    return datas[category] ?? [];
  }
}
