class ParkingCar {
  const ParkingCar({
    required this.id,
    required this.carNumber,
    required this.ownerType,
  });

  final int id;
  final String carNumber;
  final CarOwnerType ownerType;
}

//차량 타입
enum CarOwnerType {
  resident("입주차량", "resident"),
  outsider("외부차량", "outsider"),
  visitor("방문차량", "visitor");

  final String labelKo;
  final String labelEng;

  const CarOwnerType(this.labelKo, this.labelEng);
}
