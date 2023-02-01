void main() {
  List<String> buildings = ['롯데월드몰', 'IFC몰', '더현대 서울', '코엑스', '롯데월드몰'];

  print(buildings);
  print(buildings.asMap());
  print(buildings.toSet());

  Map buildingsMap = buildings.asMap();
  print(buildingsMap.keys); // key값인 index들을 반환. 단, iterable의 형태.
  print(buildingsMap.values); // value값인 롯데월드몰 등등을 반환. 단, iterable의 형태.
  print(buildingsMap.keys.toList()); // List의 형태로 반환.
  print(buildingsMap.values.toList()); // List의 형태로 반환.

  Set buildingsSet = Set.from(buildings);
  print(buildingsSet.toList()); // 선 수행된 Set으로 중복값들이 제거되어 List의 형태로 반환.

  final newBuildings1 = buildings.map((x) { // 형 변환을 할때 Map을 자주 사용한다. x 파라미터는 원 객체의 값들을 input으로 받는다.
    return '빌딩 $x';
  });
  print(newBuildings1.toList());

  final newBuildings2 = buildings.map((x) => '빌딩 $x'); // arrow함수를 사용하여 동일한 출력값.
  print(newBuildings2.toList());

  print(buildings == buildings); // true
  print(newBuildings1 == buildings); // false
  print(newBuildings2 == buildings); // false
  print(newBuildings1 == newBuildings2); // false
}