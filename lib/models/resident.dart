class Resident {
  //생성자
  const Resident({
    required this.id,
    required this.name,
    required this.phone,
    required this.address,
    required this.carModelName,
    required this.carNumber,
    required this.carSize,
    required this.isParking,
  });

  //식별자
  final int id;
  //입주자명
  final String name;
  //전화번호
  final String phone;
  //주소
  final String address;
  //자동차 모델명
  final String carModelName;
  //자동차 번호
  final String carNumber;
  //자 사이즈 소형,중형,대형
  final String carSize;
  //입출차 상태
  final bool isParking;
}
