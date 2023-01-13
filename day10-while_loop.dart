void main() {
  // while loop
  int total = 0;

  while(total < 10) {
    total += 1;
  }
  print(total);

  // do while loop
  total = 0;

  do { // do while의 경우, do를 먼저하고 while문 실행, 빈도가 거의 없는 문법.
    total += 1;
  } while(total < 10);

  print(total);

  // while if loop
  total = 0;
  
  while(total < 10) {
    total += 1;
    if(total == 6) {
      break;
    }
  }
  print(total);

  // break, continue
  total = 0;
  print('total = $total');
  while(total < 10) {
    total += 1;
    if(total == 6) {
      continue;
    }
    print('Present total is $total');
  }
}