void main() async{
  Future<String> name = Future.value('현재');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  print("메인함수 시작");
  await addNumbers(1, 3); // 1번 함수, * await은 future함수만을 return한다.
  await addNumbers(2, 4); // 2번 함수,
  // 이 경우 1번과 2번 함수를 순서대로 실행!

  Future.delayed(Duration(seconds: 2), () {
    print("계산하는동안 먼저 실행");
  });
  // 설명
  print("Future의 딜레이 걸어준 구문끼리, 딜레이 걸어준 3초만큼 뒤에 동작함을 알 수 있다.");
}

Future<int> addNumbers(int number1, int number2) async{ // 오류주의* Future에서 int타입, asybc
  print("비동기 함수 시작");

  print("계산 시작: $number1 + $number2");

  // 서버 시작
  await Future.delayed(Duration(seconds: 3), () { // 오류주의* await
    print("계산 완료: ${number1 + number2}");
  });

  print("함수 끝: $number1 + $number2");
  
  return number1 + number2;
}
