void main() {

  Music red_sky = Music(singer: "BigBang", genre: "k-pop");

  red_sky.playSong();

  Culture kr_music = Culture("BTS", "k-pop"); // key값인 singer, genre를 표기하면 오류가 난다. 차례대로 positional parameter로 input을 준다.

  kr_music.playSong();

  kr_music.kpopTrend();

}

class Music{
  // 가수
  String singer;

  // 장르
  String genre;

  Music({ // constructor
    required this.singer, // named parameter
    required this.genre,
  });

  void playSong() {
    print("now playing... ${this.singer} recored this song");
  }

}

class Culture extends Music {
  Culture(
    String singer,
    String genre,
  ): super(
      singer: singer,
      genre: genre,
    ); // this가 아닌 super로 부모 클래스의 속성을 지칭한다.

  void kpopTrend() {
    print("${this.singer} is(are) KR culture leader!");
  }
}