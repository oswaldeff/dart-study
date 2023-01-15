void main() {
  addNumbers();

  testPositional(1, 2, 3); // print결과 1, 2, 3 반환
  
  testOptional1(1); // print결과 1, null, null 반환

  testOptional2(1); // print결과 1, 0, 0 반환

  testRequired(b: 10, a: 20, c: 30); // print결과 20, 10, 30 반환

  int result1 = resultTest1(20, 30, 50); // print결과 100 반환
  print(result1);

  int result2 = resultTest2(b: 20, 10); // print결과 60 반환
  print(result2);
}

// 세개의 숫자를 더하고 짝수인지 홀수인지 알려주는 함수
addNumbers() {
  print('addNumbers 실행');
  int x = 10;
  int y = 20;
  int z = 30;

  int sum = x + y + z;
  print(sum);

  if(sum % 2 == 0) {
    print('모든 수의 합은 짝수입니다.');
  }

  if(sum != Null) {
    print('addNumbers 종료');
  }
}

// parameter & argument: 매개변수
// positional parameter: 순서가 있는 파라미터
testPositional(int a, int b, int c) {
  print(a);
  print(b);
  print(c);
}


// optional parameter 1: 필수가 아닌 파라미터 
testOptional1(int a, [int? b, int? c]) {
  print(a);
  print(b);
  print(c);
}

// optional parameter 2: default값이 존재하는 optional 파라미터
testOptional2(int a, [int b = 0, int c = 0]) {
  print(a);
  print(b);
  print(c);
}


// named parameter: 이름이 있는 파라미터(순서가 없다)
testRequired({
  required int a,
  required int b,
  required int c
}) {
  print(a);
  print(b);
  print(c);
}

// type, return in function
int resultTest1(int a, int b, int c) {

  int sum = a + b + c;

  return sum;
}

// arrow function: indicate 함수
int resultTest2(int a, {
  required int b,
  int c = 30
}) => a + b + c;
