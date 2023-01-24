void main() {
  Music player = Music(
    ['pop', 'balad', 'RnB'],
    'melon'
  );

  print(player.firstGenre); // getter사용 결과

  player.firstGenre = 'k-pop';
  print(player.firstGenre); // setter사용 결과
}

// getter: 데이터를 가져올때 사용.
// setter: 데이터를 설정할때 사용.

class Music {
  List<String> genre;
  String company;

  Music(this.genre, this.company); // variable이 final이 아니면 const사용불가.

  void printGenre() {
    print(this.genre);
  }

  void printCompany() {
    print(this.company);
  }

  // getter
  String get firstGenre{
    return this.genre[0];
  }

  // setter
  set firstGenre(String genre) { // setter의 parameter는 항상 1개만 들어간다.
    this.genre[0] = genre;
  }
}

// function 대신에 getter를 사용하는 이유로 기능적인 차이는 없으나, 뉘앙스의 차이가 있다. 간단히 데이터를 가공하여 사용할 때에 gettter를 사용한다.
// logic이 필요한 경우 function을 선호한다.
// 현대의 프로그래밍에서 setter는 사용을 잘 안한다.(final로 emutable한 List를 선언해도 setter로 List의 요소를 변경할 수 있기에 예외적인부분으로 사용을 잘 안한다.)