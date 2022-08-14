import 'package:meta/meta.dart';

class Foo {
  @nonVirtual
  void bar() {
    print("bar from Foo!");
  }
}

class SubFoo extends Foo {
  @override
  void bar() {
    print("bar from SubFoo");
  }
}

void main(List<String> args) {
  SubFoo sb = new SubFoo();
  sb.bar();
}
