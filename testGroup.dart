import "package:test/test.dart";   
void main() {   
  
   group("String", () {   
     // First test case  
      test("testing on split() method of string class", () {   
         var string = "Hii,Hello,Hey";   
         expect(string.split(","), equals(["Hii", "Hello", "Hey"]));   
      });   
      // Second test case  
      test("testing on trim() method of string class", () {   
         var string = "  Hii ";   
         expect(string.trim(), equals("Hii"));   
      });   
   });   
}  
