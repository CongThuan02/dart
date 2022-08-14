import 'dart:io';

import 'SinhVien.dart';
import 'listStudent.dart';

void main(List<String> args) {
  ListStudent listsv = new ListStudent();
  int? luachon;

  do {
    stdout.write(
        "1. Them Sinh Vien\n 2.in danh sach \n 3.kiem tra so luong sinh vien\n 4. xoa toan bo danh sach \n0 thoat khoi chuong trinh \n");
    luachon = int.parse(stdin.readLineSync()!);
    switch (luachon) {
      case 1:
        {
          var sv = new SinhVien();
          sv.input();
          listsv.themsinhvien(sv);
          break;
        }
      case 2:
        {
          listsv.inDanhSach();
          break;
        }
      case 3:
        {
          listsv.xoaToanBo();
          break;
        }
      default:
        {
          print("thoat khoi chung trinh");
        }
    }
  } while (luachon != 0);
  var a = ListStudent.thmmm();
  print(a);
}
