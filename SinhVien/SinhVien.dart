import 'dart:io';

abstract class Person {
  String? name;
  int? age;

  void input();
  void output();
}

class SinhVien implements Person {
  double? gpa;
  List list = [];
  @override
  String? name;
  int? age;

  // SinhVien({required this.name, required this.age, required this.gpa});
  @override
  void input() {
    stdout.write("insert name:  ");
    name = stdin.readLineSync();
    stdout.write("insert age: ");
    age = int.parse(stdin.readLineSync()!);
    stdout.write("insert gpa: ");
    gpa = double.parse(stdin.readLineSync()!);
  }

  @override
  void output() {
    print("name: $name age: $age gpa: $gpa");
  }

  void addInfo(SinhVien value) {
    list.add(value);
  }

  void getInfo() {
    list.forEach((item) {
      print( item.name  );
      print( item.age  );
      print( item.gpa  );
    });
  }
}
