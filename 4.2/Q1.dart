import 'dart:io';

class Student {
  String? name;
  int? age;
  String? city;
  
  void setData() {
    print("Enter Name: ");
    name = stdin.readLineSync()!;
    print("Enter Age: ");
    age = int.parse(stdin.readLineSync()!);
    print("Enter City: ");
    city = stdin.readLineSync()!;
  }
  void display() {
print("Name: $name, Age: $age, City: $city");
  } 
}

void main() {
  Student s = Student()..setData()..display();

}