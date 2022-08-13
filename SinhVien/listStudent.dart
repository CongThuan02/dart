
import 'SinhVien.dart';

class ListStudent  {
  List<SinhVien> list = [];
  listStudent() {
    this.list = [];
  }

  void themsinhvien(SinhVien sv) {
    list.add(sv);
  }

  void inDanhSach() {
    print('danh sach sinh vien la: ');
    list.forEach((element) =>
        {print(element.name), print(element.age), print(element.gpa)});
  }

  void kiemTraSoLuong() {
    print('so luong sinh vien la: ');
    print(list.length);
  }

  void xoaToanBo() {
    print('sau khi xoa');
    list.remove(list);
  }
}
