//Section 2. Introduction to dart. Number 37, 38
//while loop
//for loop

// while loop
// void main() {
//   final values = [1, 2, 3, 4];
//   print(sum1(values));
// }

// int sum1(List<int> values) {
//   int i = 0;
//   int results = 0;
//   while (i < values.length) {
//     results += values[i];
//     i++;
//   }
//   return results;
// }

//for loop
void main() {
  final values = [1, 2, 3, 4];
  print(sum1(values));
}

int sum1(List<int> values) {
  int results = 0;
  // for (int i = 0; i < values.length; i++) {
  //   results += values[i];
  // }

  for (int value in values) {
    results += value;
  }

  return results;
}
