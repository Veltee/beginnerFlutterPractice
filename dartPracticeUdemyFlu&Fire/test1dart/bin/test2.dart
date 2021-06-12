//Section 2. Introduction to dart. Number 27,28,29
//27-28. ABSTRACT CLASS
//29.Abstract Class with function

import 'dart:math';

void main() {
  final square = Square(side: 10.0);
  // print(square.area());
  printArea(square);
  final circle = Circle(radius: 5);
  print(circle.area());
}

void printArea(Shape shape) {
  print(shape.area());
}

abstract class Shape {
  double area();
}

class Square implements Shape {
  Square({this.side});
  final double side;
  double area() => side * side;
}

class Circle implements Shape {
  Circle({this.radius});
  final double radius;

  double area() => radius * radius * pi;
}
