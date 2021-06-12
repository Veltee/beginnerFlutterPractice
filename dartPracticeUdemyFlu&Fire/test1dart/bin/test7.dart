//Section 2. Introduction to dart. Number 35, 36
//35. if and else
//36. ternary operator

void main() {
  printOE(3);
  print(6);
}

void printOE(int value) {
  //the faster / concise if else
  final type = (value % 2 == 0) ? 'even' : 'odds';
  print('$value is $type');

  // if (value % 2 == 0) {
  //   print('$value is even sekia');
  // } else {
  //   print('$value is odd sekia');
  // }
}
