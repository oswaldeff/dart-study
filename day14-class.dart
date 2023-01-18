void main() {
  Actor person = Actor([18, 20, 19]);
  print(person.country);
  print(person.name);
  print(person.sex);
  print(person.age);
  person.krSayHello();
  person.jpSayHello();
  person.usSayHello();
}

// Actor class
// attributions: country, name, sex, age
// functions: greetings
class Actor {
  List<String> country = ['korea', 'japan', 'united states'];
  List<String> name = ['ma dong seok', 'tanaka', 'angelina jolie'];
  List<String> sex = ['man', 'man', 'woman'];
  List<int> age = [51, 38, 47];

// constructor(생성자) input으로 positional parameters를 할당, :에서 this는 class Actor를 의미.
  Actor(List<int> age):
    this.age = age;

  void krSayHello() {
    print("안녕하세요");
  }
  void jpSayHello() {
    print("こんにちわ");
  }
  void usSayHello() {
    print("hello");
  }
}