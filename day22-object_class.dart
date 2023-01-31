void main() {
  Test test = Test();
  print(test.runtimeType);
}

// Object Oriented Programming: OOP
class Test {} // -> class Test extends Object {} 즉, Object를 이미 상속하는 객체이다.

// Obeject는 기본적으로 아래와 같은 4가지 함수를 내재하고 있다.
// 1. hashCode
// 2. runtimeType
// 3. toString()
// 4. noSuchMethod(Invocation invocation)
