void main() {
  // Future: 미래
  // 미래에 받아올 값
  Future<String> name = Future.value('현재');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  print("메인함수 시작");
  addNumbers(1, 3);
  addNumbers(2, 4);

  // Delayed: 지연
  // 지연되는 값
  // 1st Parameter: Duration(지연될 기간)
  // 2nd Parameter: Function(지연이후 실행될 함수)
  Future.delayed(Duration(seconds: 2), () {
    print("계산하는동안 먼저 실행");
  });
  // 설명
  print("Future의 딜레이 걸어준 구문끼리, 딜레이 걸어준 3초만큼 뒤에 동작함을 알 수 있다.");
}

void addNumbers(int number1, int number2) async { // async는 서버에서 어떤 값을 가져와서, 다음작업에 활용해야하는 경우 일반적으로 사용한다.
  print("비동기 함수 시작");

  print("계산 시작: $number1 + $number2");

  // 서버 시작
  await Future.delayed(Duration(seconds: 3), () {
    print("계산 완료: ${number1 + number2}");
  });

  // await 이후에 실행되는 부분
  print("함수 끝: $number1 + $number2");
}
