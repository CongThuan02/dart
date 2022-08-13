import 'package:test/test.dart';  
int add(int a, int b){
  return a + b;
}
void main(){
  test("test to check method",(){
    var expected = 30;

    var actual = add(10,20);
    expect(actual,expected);
  });
}