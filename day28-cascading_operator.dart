void main() {
  List<int> evenNums = [
    2, 4, 6, 8, 10
  ];

  List<int> oddNums = [
    1, 3, 5, 7, 9
  ];
  // ...는 cascading operator
  // python의 extend랑 비슷
  print([...evenNums, ...oddNums]);

  print(evenNums == [...evenNums]); // print결과 false를 return, 결과의 형태는 같지만 동일한 인스턴스는 아니다.

  List<Map<String, String>> people = [
    {
      "firstName": "kim",
      "sex": "male",
    },
    {
      "firstName": "park",
      "sex": "female",
    },
    {
      "firstName": "lee",
      "sex": "male",
    }
  ];

  print(people);

  final parsePeople = people.map(
    (x) => Person(
      name: x["name"]!,
      sex: x["sex"]!,
    ),
  ).toList();

  print(parsePeople);

}

class Person {
  final String name;
  final String sex;

  Person({
    required this.name,
    required this.sex,
  });
  
  @override
  String toString() {
    return 'Person(name: $this.name, sex: $this.sex)';
  }
}