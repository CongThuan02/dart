void main(List<String> args) {
  List list = ['thuan', 'hoang', 'cong'];
  dynamic map2;
  list.forEach(((element) {
    print(element);
  }));
  var s = list[1];
  if (list.any((element) => element.length >10 )) {
    print("co thuan");
  } else {
    print("khong co gi ca");
  }

  map2 = list.asMap();
  print(map2);
}
