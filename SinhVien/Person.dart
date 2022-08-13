import 'dart:io';

abstract class Person {
  String? name;
  int? age;

  void input(){
     stdout.write("insert name:  ");
    name = stdin.readLineSync();
    stdout.write("insert age: ");
    age = int.parse(stdin.readLineSync()!);
  }
  void output(){
     @override
  void output() {
    print("name: $name age: $age ");
  }
  }
}
