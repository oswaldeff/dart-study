void main() {
    // 정수
    // integer
    int numberOne = 10;
    print(numberOne);

    int numberTwo = -15;
    print(numberTwo);

    print(numberOne + numberTwo); // 덧셈
    print(numberOne - numberTwo); // 뺄셈
    print(numberOne / numberTwo); // 나눗셈
    print(numberOne * numberTwo); // 곱셈


    // 실수
    // double
    double numberThree = 0.1;
    double numberFour = 0.2;


    // 참, 거짓
    // boolean
    bool isTrue = true;
    bool isFalse = false;


    // 글자
    // String
    String name = 'oswaldeff';
    String github = '@github.com'
    print(name + github);
    print('${name}${github}'); // {}로 함수도 사용가능
    print('$name$github'); // 변수만 사용할경우 $로만으로도 사용가능


    // var?
    var nameOrigin = 'oswaldeff';
    var ageOrigin = 20;
    print(nameType.runtimeType); // runtimeType은 var로 선언된 변수의 타입을 return

    // dynamic?
    dynamic address = 'kr';
    print(address);
    print(address.runtimeType);

    dynamic age = 30;
    print(age);
    print(age.runtimeType);

    // var vs dynamic
    nameOrigin = 2023; // var로 선언되어, 기존타입이 'String'이기 때문에 오류발생
    address = 2023; // dynamic으로 선어노디어, 기존타입이 'String'일지라도 새로운 변수에 할당된 'Integer'로 변경


    // nullable - null이 될 수 있다.
    // non-nullable - null이 될 수 없다.
    // null - 아무런 값도 있지 않다.
    String nullTest1 = 'seoul';
    nullTest1 = null; // String 타입으로 지정되어 있어 null 불가, 오류발생

    String? nullTest2 = 'busan';
    nullTest2 = null; // String?에서 ?는 nullable을 의미
    print(nullTest2!) // nullable한값에 !는 현재 이 값이 null이 아님을 의미


    final String finalTest1 = 'daegu';
    finalTest1 = 'masan'; // 오류발생, final을 앞에 할당하면 변수를 재선언 할 수 없다

    const String constTest1 = 'daegu';
    constTest1 = 'masan';

    // var가 제공하는 기능을 커버하는 final, const
    final finalTest2 = 'daegu'; // var없이 선언가능
    const constTest2 = 'daegu'; // var없이 선언가능


    // Datetime
    Datetime dayNow = Datetime.now();

    // Datetime으로부터 final과 const의 차이를
    final dayNow1 = Datetime.now(); // 오류미발생, 변수 빌드시 해당값을 알지몰라도 괜찮다
    const dayNow2 = Datetime.now(); // 오류발생, 변수 빌드시 해당값을 알아야 한다
}