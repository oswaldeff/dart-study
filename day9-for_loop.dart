void main() {
  // for loop
  for(int i = 0; i < 10; i++) {  // 변수 선언, 조건 선언, loop 1회에 타겟변수
    print(i); // loop 내용
  }

  // 사용예시
  int total = 0;
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  for(int i = 0; i < numbers.length; i++){
    total += numbers[i];
  }
  print(total);
  // 발전된 형태
  total = 0;
  for(int number in numbers){
    total += number;
  }
  print(total);
}