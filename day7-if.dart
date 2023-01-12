void main() {
  // if문
  int numberOne = 11;

  if(numberOne % 3 == 0) {
    print('$numberOne은 3으로 나누면 나머지가 0');
  }else if(numberOne % 3 == 1) {
    print('$numberOne은 3으로 나누면 나머지가 1');
  }else {
    print('$numberOne은 3으로 나누면 나머지가 2');
  }
}