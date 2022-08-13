import 'dart:io';
import 'Person.dart';

class SinhVien extends Person {
  double? gpa;
  List list = [];
  @override

  // SinhVien({required this.name, required this.age, required this.gpa});
  @override
  void input() {
    // TODO: implement input
    super.input();
    stdout.write("insert gpa: ");
    gpa = double.parse(stdin.readLineSync()!);
  }

  @override
  void output() {
    // TODO: implement output
    super.output();
    print(" Gpa: $gpa");
  }

 
}
