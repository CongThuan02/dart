class StringUtility {
  static dynamic concatAndTrim(int s1, double s2, {int c = 13, double d = 4.3}) {
    var s = s1 + s2 + c + d;
    if (c == 13) {
      return c;
    }else if (d == 4.3) {
      return d;
    }
    return s;
  }
}

void main() {
  var s1 = 3;
  var s2 = 4.3;
  var a = StringUtility.concatAndTrim(s1, s2);
  print(a);
}
