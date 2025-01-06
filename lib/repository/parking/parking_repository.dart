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
    ]
  };

  Future<List<Map<String, dynamic>>> getParkigList(String category) async {
    await Future.delayed(Duration(milliseconds: 0));
    return datas[category] ?? [];
  }
}
