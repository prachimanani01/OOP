class Employee {
  int id;
  String name;
  String designation;
  double salary;
  int experience;
  String companyName;
  int age;
  String qualification;

  Employee({
    required this.id,
    required this.name,
    required this.designation,
    required this.salary,
    required this.experience,
    required this.companyName,
    required this.age,
    required this.qualification,
   
  });

  factory Employee.create({
    required int id,
    required String name,
    required String designation,
    required double salary,
    required int experience,
    required String companyName,
    required int age,
    required String qualification,
    
  }) {
    return Employee(
      id: id,
      name: name,
      designation: designation,
      salary: salary,
      experience: experience,
      companyName: companyName,
      age: age,
      qualification: qualification,
      
    );
  }
}

void main() {
  List<Employee> employees = [];

  for (int i = 1; i <= 20; i++) {
    employees.add(Employee.create(
      id: 101,
      name: 'John  Doe $i',
      designation: 'Manager $i',
      salary: 10000 + i * 3000,
      experience: 2,
      companyName: 'Google $i',
      age: 28 + i,
      qualification: 'MScIt $i',
      gender: i.isEven ? 'Male' : 'Female',
      mobileNumber: '9988776655 $i',
    ));
  }

  for (var employee in employees) {
    print('-----------------------------------');
    print('ID: ${employee.id}');
    print('Name: ${employee.name}');
    print('Designation: ${employee.designation}');
    print('Salary: ${employee.salary}');
    print('Experience: ${employee.experience}');
    print('Company Name: ${employee.companyName}');
    print('Age: ${employee.age}');
    print('Qualification: ${employee.qualification}');
    print('Gender: ${employee.gender}');
    print('Mobile Number: ${employee.mobileNumber}');
    print('-----------------------------------');
  }
}