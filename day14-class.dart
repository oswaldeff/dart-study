void main() {
  Actor person1 = Actor('ma dong seok', [18, 20, 19]); // 기본
  print(person1.country);
  print(person1.name);
  print(person1.sex);
  print(person1.age);
  person1.krSayHello();
  person1.jpSayHello();
  person1.usSayHello();

  Actor person2 = Actor('angelina jolie', [40, 41, 42]); // constructor
  person2.letMeIntroduce();

  Actor person3 = Actor.fromList([ // named constructor
    'tanaka',
    [60, 59, 58]
  ]);
}

// Actor class
// attributions: country, name, sex, age
// functions: greetings
class Actor {
  List<String> country = ['korea', 'japan', 'united states'];
  String? name = null; // 'ma dong seok', 'tanaka', 'angelina jolie'
  List<String> sex = ['man', 'man', 'woman'];
  List<int> age = [51, 38, 47];

// constructor(생성자) input으로 positional parameters를 할당, :에서 this는 class Actor를 의미.
  Actor(this.name, this.age); // class 내부 객체의 값을 input positional parameter에서 할당, 여기서 Actor는 constructor

  Actor.fromList(List values): // named constructor
    this.name = values[0],
    this.age = values[1];

  void krSayHello() {
    print("안녕하세요");
  }
  void jpSayHello() {
    print("こんにちわ");
  }
  void usSayHello() {
    print("hello");
  }

  void letMeIntroduce() {
    print("Hi nice to meet you. My name is $this.name"); // instance가 출력
    print("Hi nice to meet you. My name is ${this.name}"); // instance의 value가 출력
  }
}