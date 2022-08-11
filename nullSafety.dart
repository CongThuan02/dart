String getName(int a, String? name) {
  //không cho phép giá trị của a chuyền vào là null nhưng cho phép giá trị của name chuyền vào là null
  if (name != null) {
    return name;
  } else {
    return 'khong co name';
  }
}

void main(List<String> args) {
  int? a; //khi có ? sẽ cho phép biến nhận giá trị là null
  a = null;
  String? name = null;
  name = 'hoang cong thuan';

  var b = getName(3, null);
  print("ten la: $b");
}
