void printnumbers(int a, dynamic Function(int a) inputb) {
  var kq = inputb(a);
  print('kq = $kq');
}

void main() {
  var usa = (int a) {
    return a * 10;
  };
  
  printnumbers(33, usa);
}
