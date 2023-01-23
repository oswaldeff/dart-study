void main() {
  Music player = const Music(
    ['pop', 'balad', 'RnB'],
    'melon'
  );

  Music newPlayer = const Music(
    ['pop', 'balad', 'RnB'],
    'melon'
  );

  print(player == newPlayer); // const로 선언된 constructor는 같은 객체로 취급된다.

  player.printGenre();

  player.printCompany();
}

class Music {
  final List<String> genre;
  final String company;

  const Music(this.genre, this.company);

  void printGenre() {
    print(this.genre);
  }

  void printCompany() {
    print(this.company);
  }
}
