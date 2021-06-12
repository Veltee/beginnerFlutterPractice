// dart:core
import 'dart:core';
import 'dart:io';

main() {
  stdout.writeln('What is your name?');
  String name = stdin.readLineSync();
  print('my name is $name');

  // var firstName = 'Boi';
  // String lastName = 'Baboi';

  // print(firstName + ' ' + lastName);

  // print('hello cunt');
  int amount = 200;
  var amount2 = 200;
  print('$amount and $amount2 \n');

  double ble = 200.22;
  var ble2 = 400.332;
  //var can know which type of object it is
  /* there are 5 type: int, double, String, bool, dynamic*/

  dynamic yoai = 200;
  print('$yoai');

  yoai = 'lol';
  print('$yoai');
  /* dynamic will decide what type at the run time, first is int second is string*/

  yoai = null;
  print(
      '$yoai'); //even null print out because dart is OOP, everything is an object
}
