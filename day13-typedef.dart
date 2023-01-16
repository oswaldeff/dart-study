void main() {
  Operation operation = add; // 더하기
  int result1 = operation(10, 20, 30);
  print(result1);

  operation = subtract; // 빼기
  int result2 = operation(10, 20, 30);
  print(result2);


  // operation가 calculate return에서 반환, 따라서 아래와 같이 간결하게 사용가능.
  int result3 = calculate(30, 40, 50, add); // 계산
  print(result3);

  int result4 = calculate(30, 40, 50, subtract);
  print(result4);
}

// signature
typedef Operation = int Function(int x, int y, int z);

// 더하기
int add(int x, int y, int z) => x + y + z;

// 빼기
int subtract(int x, int y, int z) => x - y - z;

// 계산
int calculate(int x, int y, int z, Operation operation) {
  return operation(x, y, z);
}
