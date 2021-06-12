//Section 2. Introduction to dart. Number 26
//overriding toString method
void main() {
  final empl = Employee(
      name: 'andrea', age: 44, height: 1.45, taxCode: 'AB12', salary: 60000);

  print(empl.toString());
}

class Person {
  Person({this.namep = '', this.agep = 0, this.heightp = 0});
  final String namep;
  final int agep;
  final double heightp;

  String toString() => 'name: $namep, age: $agep, height: $heightp';

  String describe() {
    return "Hello, my name's $namep. I am $agep years old. I am ${heightp} meters tall";
  }

  void sayName() => print("Hello, I am $namep");
}

class Employee extends Person {
  Employee(
      {String name = '',
      int age = 0,
      double height = 0,
      this.taxCode = '',
      this.salary = 0})
      : super(namep: name, agep: age, heightp: height);
  final String taxCode;
  final int salary;
  @override
  String toString() =>
      "${super.toString()}, taxCode: $taxCode, salary: $salary";
}
