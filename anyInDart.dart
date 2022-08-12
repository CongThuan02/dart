import 'dart:math';

void main(List<String> args) {
  List list = [3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
  if (list.any((e) => e > 10)) {
    print("co so lon hon 10");
  } else {
    print("khong co so lon hon 10");
  }

  var flag = list.every((e) => e > 10);
  if (flag == true) {
    print("tat cac cac so deu lon hon 10");
  }else{
    print("tat ca cac so deu khong lon hon 10");
  }
}
