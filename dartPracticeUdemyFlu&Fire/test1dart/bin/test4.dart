//Section 2. Introduction to dart. Number 31
//mixin

mixin BMI {
  double calculateBMI(double weight, double height) {
    return weight / (height * height);
  }
}

//calculating BMI (body mass index)
class Person with BMI {
  Person({this.name, this.age, this.height, this.weight});

  final String name;
  final int age;
  final double height;
  final double weight;

  double get bmi => calculateBMI(weight, height);
  //the reason this works is because calculateBMI method is defined inside the mixin
  //and added it to person class "with BMI"

  // double calculateBMI(double weight, double height) {
  //   return weight / (height * height);
  // }
  // this is not working after making the mixin because
  // classes and mixins cannot define the same variables and method names

}

void main() {
  final person = Person(name: 'Andrea', age: 34, height: 1.65, weight: 71);
  print(person.bmi);
}
