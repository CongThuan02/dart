abstract class A {
  void printHello();
}
//class b dc implements tu class a
abstract class B implements A {
  void printHello() {
    print("hello cu");
  }

  void printHello2();
}
//class c dc implements tu class a va b
class C implements A, B {
  void printHello() {
    print("hello");
  }

  void printHello2() {
    print("hello anh");
  }
}

void main(List<String> args) {
  C b = new C();
  b.printHello();
  b.printHello2();
}
