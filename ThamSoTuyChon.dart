class MyUtility {
  static String concat(String s1, String s2, [String? s3]) {
    if (s3 != null) {
      return s1 + s2 + s3;
    }
    return s1 + s2;
  }

  static double sum(double v1, double v2, [double? v3, double? v4]) {
    return v1 + v2 + (v3 ?? 0) + (v4 ?? 0);
  }
}

void main() {
  String result1 = MyUtility.concat('One', 'Two');
  print('result1: $result1');
  String result2 = MyUtility.concat('One', 'Two', 'Three');
  print('result2: $result2');
  double value1 = MyUtility.sum(1, 2, 3, 4);
  print('value1: $value1');
  double value2 = MyUtility.sum(1, 2, 3);
  print('value2: $value2');
  double value3 = MyUtility.sum(1, 2);
  print('value3: $value3');
}
