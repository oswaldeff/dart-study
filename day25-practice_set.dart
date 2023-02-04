void main() {
  Set harryPotterSet = {
    'Harry Potter',
    "Ron Weasley",
    "Hermione Granger",
  };

  final characterSet = harryPotterSet.map((x) => '$x 는 해리포터의 주인공 중 1명입니다.').toSet();
  print(characterSet);
}