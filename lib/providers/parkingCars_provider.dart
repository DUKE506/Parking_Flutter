import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parking_flutter/models/parkingCar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'parkingCars_provider.g.dart';

const List<ParkingCar> allParkingCar = [
  // 입주민 차량 30대
  ParkingCar(id: 1, carNumber: '22마 5432', ownerType: CarOwnerType.resident),
  ParkingCar(id: 2, carNumber: '34가 1234', ownerType: CarOwnerType.resident),
  ParkingCar(id: 3, carNumber: '45나 6789', ownerType: CarOwnerType.resident),
  ParkingCar(id: 4, carNumber: '67다 4321', ownerType: CarOwnerType.resident),
  ParkingCar(id: 5, carNumber: '89라 8765', ownerType: CarOwnerType.resident),
  ParkingCar(id: 6, carNumber: '12마 9876', ownerType: CarOwnerType.resident),
  ParkingCar(id: 7, carNumber: '56바 2345', ownerType: CarOwnerType.resident),
  ParkingCar(id: 8, carNumber: '78사 6543', ownerType: CarOwnerType.resident),
  ParkingCar(id: 9, carNumber: '90아 7890', ownerType: CarOwnerType.resident),
  ParkingCar(id: 10, carNumber: '23자 3456', ownerType: CarOwnerType.resident),
  ParkingCar(id: 11, carNumber: '45차 8901', ownerType: CarOwnerType.resident),
  ParkingCar(id: 12, carNumber: '67카 2345', ownerType: CarOwnerType.resident),
  ParkingCar(id: 13, carNumber: '89타 6789', ownerType: CarOwnerType.resident),
  ParkingCar(id: 14, carNumber: '12파 1234', ownerType: CarOwnerType.resident),
  ParkingCar(id: 15, carNumber: '34하 5678', ownerType: CarOwnerType.resident),
  ParkingCar(id: 16, carNumber: '56거 9012', ownerType: CarOwnerType.resident),
  ParkingCar(id: 17, carNumber: '78너 3456', ownerType: CarOwnerType.resident),
  ParkingCar(id: 18, carNumber: '90더 7890', ownerType: CarOwnerType.resident),
  ParkingCar(id: 19, carNumber: '12러 2345', ownerType: CarOwnerType.resident),
  ParkingCar(id: 20, carNumber: '34머 6789', ownerType: CarOwnerType.resident),
  ParkingCar(id: 21, carNumber: '56버 1234', ownerType: CarOwnerType.resident),
  ParkingCar(id: 22, carNumber: '78서 5678', ownerType: CarOwnerType.resident),
  ParkingCar(id: 23, carNumber: '90어 9012', ownerType: CarOwnerType.resident),
  ParkingCar(id: 24, carNumber: '12저 3456', ownerType: CarOwnerType.resident),
  ParkingCar(id: 25, carNumber: '34처 7890', ownerType: CarOwnerType.resident),
  ParkingCar(id: 26, carNumber: '56커 2345', ownerType: CarOwnerType.resident),
  ParkingCar(id: 27, carNumber: '78터 6789', ownerType: CarOwnerType.resident),
  ParkingCar(id: 28, carNumber: '90퍼 1234', ownerType: CarOwnerType.resident),
  ParkingCar(id: 29, carNumber: '12허 5678', ownerType: CarOwnerType.resident),
  ParkingCar(id: 30, carNumber: '34고 9012', ownerType: CarOwnerType.resident),

  // 방문 차량 4대
  ParkingCar(id: 31, carNumber: '56노 3456', ownerType: CarOwnerType.visitor),
  ParkingCar(id: 32, carNumber: '78도 7890', ownerType: CarOwnerType.visitor),
  ParkingCar(id: 33, carNumber: '90로 2345', ownerType: CarOwnerType.visitor),
  ParkingCar(id: 34, carNumber: '12모 6789', ownerType: CarOwnerType.visitor),

  // 외부 차량 5대
  ParkingCar(id: 35, carNumber: '34보 1234', ownerType: CarOwnerType.outsider),
  ParkingCar(id: 36, carNumber: '56소 5678', ownerType: CarOwnerType.outsider),
  ParkingCar(id: 37, carNumber: '78오 9012', ownerType: CarOwnerType.outsider),
  ParkingCar(id: 38, carNumber: '90조 3456', ownerType: CarOwnerType.outsider),
  ParkingCar(id: 39, carNumber: '12초 7890', ownerType: CarOwnerType.outsider),
];

//전체 주차된 차량 반환
final parkingCarProvider = Provider((ref) {
  return allParkingCar;
});

//주차현황 탭 enum
enum ParkingTab { all, resident, visitor, outsider }

//탭관리 프로바이더
final selectedTabProvider = StateProvider<ParkingTab>((ref) => ParkingTab.all);

//전체 주차 데이터를 필터링 후 제공
final filteredParkingProvider = Provider<List<ParkingCar>>((ref) {
  final selectedTab = ref.watch(selectedTabProvider);
  final allCars = ref.watch(parkingCarProvider);

  switch (selectedTab) {
    //전체
    case ParkingTab.all:
      return allCars;
    //입주차량
    case ParkingTab.resident:
      return allCars
          .where((p) => p.ownerType == CarOwnerType.resident)
          .toList();
    //방문챠량
    case ParkingTab.visitor:
      return allCars.where((p) => p.ownerType == CarOwnerType.visitor).toList();
    //외부차량
    case ParkingTab.outsider:
      return allCars
          .where((p) => p.ownerType == CarOwnerType.outsider)
          .toList();
  }
});

@riverpod
List<ParkingCar> parkingCars(Ref ref) {
  return allParkingCar;
}
