void main() {
  // switch
  int numberOne = 5;

  switch(numberOne % 3) {
    case 0:
      print('나머지가 0');
      break; // case문은 break와 세트, 그래야 다음 case로 넘어가지 않는다.
    case 1:
      print('나머지가 1');
      break;
    default:
      print('나머지가 2');
      break;
  }
}