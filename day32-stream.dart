// future와의 차이점은, stream은 실행 - 반환1 - yield - 반환2 - yield2 - 반환3 - yield3 -> 완료 의 과정을 거친다. (영상)

import 'dart:async';

void main() {
  final controller = StreamController();
  final stream = controller.stream;

  final listener1 = stream.listen((val) {
      print("listener1: $val");
    }); // stream으로부터 값이 들어올 경우에 실행할 함수

  controller.sink.add(1); // sink는 add의 이벤트를 받아들이는 곳
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
}