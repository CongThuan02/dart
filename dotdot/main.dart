void main() {
  var list1 = [];
  list1..add('One')..add('Two')..add('Three')..add('hoang');
  print(list1); // [One, Two, Three]

  // Same as:
  var list2 = [];
  list2.add('One');
  list2.add('Two');
  list2.add('Three');
  print(list2); // [One, Two, Three]
}