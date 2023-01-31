void main() {
  User<int, String> kim = User(1, 'charles');
  kim.printType();
}

// generic: 타입을 변수처럼 외부에서 받을때 사용한다.
class User<idType, nameType> { // List<String> names = []; 이 역시 generic의 한가지이다. 
  final idType user_id;
  final nameType name;

  User(this.user_id, this.name);

  void printType() {
    print(user_id.runtimeType);
    print(name.runtimeType);
  }
}