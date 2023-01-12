void main() {
  // Set
  final Set<String> fruits = {
    'apple',
    'banana',
    'apple',
    'banana',
    'grape',
  };
  print(fruits);

  fruits.add('melon');
  print(fruits);
  fruits.remove('apple');
  print(fruits); // {'banana', 'grape', 'melon'}
}