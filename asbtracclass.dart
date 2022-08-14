abstract class A {
  void inDanhSach();
  void incainay() {
    print("hoang cong thuan");
  }
}

//khi class B kế thừa class A bắt buộc phải có đầy đủ phương thức abstract cua class a.
class B extends A {
  @override
  void inDanhSach() {
    print("day la class b");
  }
  @override
  void incainay() {
    // TODO: implement incainay
    super.incainay();
  }
}

void main(List<String> args) {
  B b = new B();
  b.inDanhSach();
  b.incainay();
  
}
