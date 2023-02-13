void main() {
  // Future: 미래
  // 미래에 받아올 값
  Future<String> name = Future.value('현재');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  print("함수 시작");
  addNumbers(1, 3);

  // Delayed: 지연
  // 지연되는 값
  // 1st Parameter: Duration(지연될 기간)
  // 2nd Parameter: Function(지연이후 실행될 함수)
  Future.delayed(Duration(seconds: 2), () {
    print("딜레이 끝");
  });
}

void addNumbers(int number1, int number2) {
  print("계산 시작: $number1 + $number2");

  // 서버 시작
  Future.delayed(Duration(seconds: 2), () {
    print("계산 완료: ${number1 + number2}");
  });

  print("함수 끝");

  // 설명
  print("Future의 딜레이 걸어준 구문끼리, 딜레이 걸어준 2초만큼 뒤에 동작함을 알 수 있다.");
}
