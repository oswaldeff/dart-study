void main {
    // 특정연산
    int = numberOne = 3;

    print(numberOne);
    print(numberOne % 3); // 나머지
    
    numberOne ++; // numberOne = numberOne + 1;
    print(numberOne);
    
    numberOne --; // numberOne = numberOne -1;
    print(numberOne);


    // double에 int를 연산하면 int
    double numberTwo = 4.0;
    print(numberTwo); // 출력결과 4

    numberTwo += 5;
    print(numberTwo); // 출력결과 9

    numberTwo -= 1;
    print(numberTwo); // 출력결과 8

    numberTwo *= 2;
    print(numberTwo); // 출력결과 16

    numberTwo /= 4;
    print(numberTwo); // 출력결과 4


    // nullable, ??연산
    double? numberThree = 3.0;
    print(numberThree);

    numberThree = 2.0;
    print(numberThree);

    numberThree = null;
    print(numberThree);

    numberThree ??= 1.0; // null이면 =값으로 바꾼다는 operator
    print(numberThree);


    // 대소비교
    int numberFour = 1;
    int numberFive = 2;

    print(numberFour < numberFive); // true가 출력
    print(numberFour > numberFive); // false가 출력
    print(numberFour <= numberFive); // true가 출력
    print(numberFour >= numberFive); // false가 출력
    print(numberFour == numberFive); // false가 출력
    print(numberFour != numberFive); // true가 출력


    // 타입비교
    int numberSix = 3;
    print(numberSix is int);
    print(numberSix is String);
    print(numberSix is !int);
    print(numberSix is !String);


    // 논리연산자
    bool fact1 = 12 > 10; // 출력시 true
    bool fact2 = 12 > 10 && 1 > 0; // AND연산, 출력시 true
    bool fact3 = 12 > 0 || 1 < 0; // OR연산, 출력시 true
}