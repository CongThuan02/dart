void main(List<String> args) {
  List list = ['thuan', 'hoang', 'cong'];
  dynamic map2;
  list.forEach(((element) {
    print(element);
  }));

   map2 = list.asMap();
  print(map2);
}
