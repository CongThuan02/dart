void main(List<String> args) {
//gan truc tiep
  (String name) {
    print('hello $name');
  }('thuan');

  //gan gia tri thong qua bien
  var kq1 = (int a, int b) => a + b;
  var kq = kq1(3, 2);
  print(kq);

  //lop  function

  Function sum = (int a, int b) => a + b;
  var sum1 = sum(1, 2);
  print(sum1);

  //Function la tham so;
  
}
