void main() {
  ChickenRestaurant choiceA = ChickenRestaurant('BBQ');
  ChickenRestaurant choiceB = ChickenRestaurant('BHC');

  choiceA.printLocationAndBrand();

  choiceA.brand = '푸라닭'; // choiceA 인스턴스의 brand를 '푸라닭'으로 변경.
  choiceA.printLocationAndBrand(); 

  choiceB.printLocationAndBrand();

  ChickenRestaurant.location = '구의역점'; // constructor사용없이 & instance에서 접근하는것이 아닌 class에 바로 접근하여 선언. class자체에 귀속이 되는것.
  choiceA.printLocationAndBrand();
  choiceB.printLocationAndBrand();
}

class ChickenRestaurant {
  // static은 instance가 아닌 class에 귀속된다.
  static String? location;
  String brand;

  ChickenRestaurant(
    this.brand
  ); // constructor는 변수가 아닌 괄호뒤에 ;

  void printLocationAndBrand() {
    print('오늘저녁메뉴는 $location $brand의 양반후반입니다.');
  }
}