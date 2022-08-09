void main(List<String> args) {
  Map map1 = {'1': 'thuan', '2': 'hoang ', '3': 'cong'};
  List<dynamic> list = [];
  map1.forEach((key, value) => {list.add(value)});
  print(list);

  print("danh sach sau khi sap xep: ");
  list.sort();
  print(list);
  print("bo qua 2 phan tu dau:");
  var kq=  list.skip(2);
  print(kq);

  var listSet = list.toSet();
  print(listSet);


  
}
