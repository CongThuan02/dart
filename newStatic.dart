class Triangle {
  late double side1;
  late double side2;
  late double side3;
  static const String DEFAULT_COLOR  = 'blue'; // Static field

  Triangle(double s1, double s2, double s3) {
    bool valid = isValidSides(s1, s2, s3); // Check if all sides are valid.
    if(!valid) {
      throw ArgumentError('Invalid Sides!'); // Throw an Error.
    }
     side1 = s1;
     side2 = s2;
     side3 = s3;
  }
  static bool isValidSides(double s1, double s2, double s3)  {
     if(s1 < 0 || s2 < 0 || s3 < 0)  {
       return false;
     }
     return s1 + s2 > s3 && s1 + s3 > s2 && s2 + s3 > s1;
  }
  bool isEquilateralTriangle() {
      return side1 == side2 && side2 == side3;
  }
}
void main() {
   bool valid = Triangle.isValidSides(6, 8, 10);
   print('Are sides 6, 8 and 10 valid to make a triangle? $valid');
   var triangle = Triangle(3.0, 4.0, 5.0);
   // Check if the triangle is equilateral triangle.
   var check = triangle.isEquilateralTriangle();
   print('Is Equilateral Triangle? $check');
}