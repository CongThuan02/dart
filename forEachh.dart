import 'dart:io';

void main(List<String> args) {
  List list = [];
  int a=5;
  stdout.write("nhap vao so phan tu: ");
  for (int i = 0; i < a; i++) {
    stdout.write("nhap vao gia tri cua phan tu thu $i: ");
    String? b = stdin.readLineSync();
    list.add(b);
  }

  print('sort and forEach');
  list.sort();
  list.forEach((element) {
    print(element);
  });
  print('skip');
  var m= list.skip(3);
  print(m);
}
