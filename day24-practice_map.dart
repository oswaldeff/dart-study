void main() {
  Map<String, String> harryPotter = {
    'Harry Potter': "번개소년",
    "Ron Weasley": "주근깨소년",
    "Hermione Granger": "똑순이소녀"
  };

  final introduce = harryPotter.map((key, value) => MapEntry(
    '해리포터 주인공 $key',
    '$value'
  ));

  print(harryPotter);
  print(introduce);

  final keys = harryPotter.keys; // map이기 때문에 가능함.
  final values = harryPotter.values; // map이기 때문에 가능함.
  print(keys);
  print(values);
}