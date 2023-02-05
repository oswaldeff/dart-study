void main() {
  List<Map<String, String>> people = [
    {
      'name': 'kim dosan',
      'age': '18',
      'sex': 'male',
    },
    {
      'name': 'han yelim',
      'age': '20',
      'sex': 'female',
    },
    {
      'name': 'na hong sik',
      'age': '23',
      'sex': 'male',
    },
  ];

  print(people);

  final testSex = people.where((x) => x['sex'] == 'male').toList(); // map과 사용이 거의 동일, filtering이 필요한 경우 주로 사용한다.
  print(testSex);
}

