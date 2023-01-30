void main() {
  ChineseRestaurant a = ChineseRestaurant('홍콩반점');
  a.printName();

  JapanesRestaurant b = JapanesRestaurant('츠바루');
  b.printName();

}

// interface
abstract class RestaurantInterface { // abstract는 클래스 상속을 위한 추상황 클래스로 실제 instance를 생성할 순 없다. -> RestaurantInterface c = RestaurantInterface('하누소'); 가 불가능하다.
  String name;

  RestaurantInterface(this.name);

  void printName(); // abstract를 사용하면서 void printName() {};의 body부분인 {}를 뺄 수 있다.
}

class JapanesRestaurant implements RestaurantInterface{
  String name;

  JapanesRestaurant(this.name);

  void printName() {
    print("오늘 점심은 일식으로 12시에 ${this.name}에서 먹을예정입니다.");
  }
}

class ChineseRestaurant implements RestaurantInterface{
  String name;

  ChineseRestaurant(this.name);

  void printName() {
    print("오늘 점심은 일식으로 12시에 ${this.name}에서 먹을예정입니다.");
  }
}
