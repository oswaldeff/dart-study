void main() {
    // List
    // 리스트
    List<String> fruits = ['apple', 'banana', 'melon'];
    List<int> numbers = [1, 2, 2, 4, 8];
    print(fruits);
    print(numbers);

    // index
    // 순서 0부터 시작
    print(fruits[0]);
    print(numbers[2]);

    // length
    print(fruits.length); // 3을 출력
    print(numbers.length); // 5를 출력

    // add
    fruits.add('grape'); // ['apple', 'banana', 'melon', 'grape']를 출력
    
    // remove
    numbers.remove(2); // [1, 2, 4, 8]를 출력

    // indexOf
    numbers.indexOf(2); // 1을 출력, 앞에서부터 순차적으로 탐색
}