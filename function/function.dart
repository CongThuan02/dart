f1(var a, var b, var hoang) {
  var c = a + b;
  hoang(c);
}

void main(List<String> args) {
  f1(1, 2, (x)=> print('sum = $x'));
}
