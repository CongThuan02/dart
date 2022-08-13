class Person {
  String? name;
  int? age;
  String? address;
  Person({
    required this.name,
    required this.age,
    required this.address,
  });
}

class Student extends Person {
  int? _score;
  String? _zoom;

  Student({required String? name, required int? age, required String? address}) : super(name: name, age: age, address: address);
  
  void setscore(int value) {
    if (value < 0 || value > 10) {
      print("nhap sai diem yeu cau diem <10 hoac diem >= 0 ");
    } else {
      _score = value;
    }
  }

  void set zoom(String? value) {
    _zoom = value;
  }

  String get name => name;
  int get age => age;
  String get address => address;
  int? get score => _score;
  String? get zoom => _zoom;

  void inThongTin() {
    print("Name: " + name);
  }
}

void main(List<String> args) {
  var student = new Student(address: 'thanh lam', age: 10, name: 'thuan');
  var student2 = new Student(address: 'thanh lam', age: 10, name: 'thuan');
  student.setscore(9);
  student.name;

  student.inThongTin();
}
