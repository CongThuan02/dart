import 'dart:ffi';

//hàm thông thường
int tinhTong(int a, int b, int c) => a + b + c;

//ham voi tham so mac dinh

double tinhTong2(var a, {double b: 2, double c: 1}) => a + b + c;

//ham voi tham so tuy chon
int? tinhTong3(int a, [int? b, int? c]) {
  if (b == null && c == null) {
    return a;
  } else if (b == null && c != null) {
    return a + c;
  } else if (b != null && c == null) {
    return a + b;
  }
}

void main(List<String> args) {
  var kq = tinhTong(3, 2, 1);
  print(kq);

  var kq2 = tinhTong2(3);

  print(kq2);

  var kq3 = tinhTong3(2, 3);
  print(kq3);
}
