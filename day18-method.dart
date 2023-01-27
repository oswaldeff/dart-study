void main() {
  Cart pants = Cart(3, 2);
  print(pants.calculate2());

  Order clothes = Order(5, 3);
  print(clothes.calculate2());
}

class Cart {
  final int count;
  final int avg_price;

  Cart(
    this.count,
    this.avg_price,
  );

  int calculate1() {
    int count;
    return this.count * this.avg_price; // method 내에서 동일한 이름의 variable이 선언된 경우라면, 객체내의 변수를 지정해주기 위하여 this를 사용해주어야 한다.
  }

  int calculate2() {
    return count * avg_price;
  }
}

class Order extends Cart {
  Order(
    int count,
    int avg_price,
  ): super(
      count,
      avg_price
    );
  
  @override
  int calculate2() {
    return super.count * super.avg_price - 1; // 상속된 객체내에서 method를 override
  }
}