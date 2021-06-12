//Section 2. Introduction to dart. Number 34
//34. generics and type annotations

void main() {
  var primeNum = List<int>(); // []
  primeNum.addAll([2, 3, 5, 7]);
  var person = <String, dynamic>{
    //param is key, and value
    'name': 'Ventus',
    'age': 23,
    'height': 1.65,
  };
  person['weight'] = 70;

  //the key is not int so cannot
  // person[10] = 20;
  print(person['weight']);
}

List<int> getFourPN() => [2, 3, 5, 7];
