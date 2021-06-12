//Section 2. Introduction to dart. Number 39
//closure and the fold method
//fold is called a functional operator

void main() {
  final values = [1, 2, 3, 4];
  print(sum1(values));
}

int sum1(List<int> values) {
  return values.fold(0, (results, value) => results + value);
}
