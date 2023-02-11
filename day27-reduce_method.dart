void main() {
  List<int> numbers = [1, 3, 5, 7, 9, 11];

  final result = numbers.reduce((prev, next) { // reduce에는 input parameter가 2개 들어간다.

    print("-----------------");
    print("prev: $prev");
    print("next: $next");
    print("total: ${prev + next}");

    return prev + next;
  });

  print(result);

  final another_result = numbers.reduce((prev, next) => prev + next);
  print(another_result);

  List<String> fullWords = ['Hello!', 'nice', 'to', 'meet', 'you'];

  final sentence = fullWords.reduce((prev, next) => prev + ' ' + next);
  print(sentence);
}

// reduce에서의 첫번째 prev에는 index 0에 해당하는 값인 1이 할당되고, 이후 prev부터는 return 값이 할당된다.

// *reduce에서 중요한 점은 input에 해당하는 prev, next의 타입과 return되는 타입이 같아야 한다는 것이다.*