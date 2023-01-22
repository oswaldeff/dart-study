void main() {
  Music player = const Music(
    ['pop', 'balad', 'RnB'],
    'melon'
  );

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