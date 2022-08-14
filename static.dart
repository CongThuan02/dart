class Student {
  static String? stdBranch; // Khai báo biến tĩnh
  String? empName;
  int? roll_num;

  void showStdInfo() {
    print("Tên sinh viên là: $empName");
    print("Lương của sinh viên là: $roll_num");
    print("Tên chi nhánh của sinh viên là: $stdBranch  ");
  }
}

void main() {
  Student std1 = new Student(); // Tạo các phiên bản của lớp sinh viên
  Student std2 = new Student();
  // Gán giá trị của biến tĩnh bằng tên lớp
  Student.stdBranch = "Công Nghệ Phần Mềm";

  std1.empName = "Ben Cắt";
  std1.roll_num = 90013;
  std1.showStdInfo();

  std2.empName = "Peter Handscomb";
  std2.roll_num = 90014;
  std2.showStdInfo();
}
