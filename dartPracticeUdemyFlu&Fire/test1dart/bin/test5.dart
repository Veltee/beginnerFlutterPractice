//Section 2. Introduction to dart. Number 32,33
//32. intro to lists
//33. intro to maps
//collections in dart, collection is a group of object
//Lists, Sets, and Maps
//Lists = ordered group of objects.
//Maps = a collection of key/value pairs.
//var will define the type for us, in the list they define var as list

//testing list here
// void main() {
//   var primeNum = [2, 3, 5, 7];
//   primeNum.addAll([11, 13, 17, 19]);
//   primeNum.add(23);

//   print(primeNum);
// }

//testing map here
void main() {
  var person = {
    'name': 'Ventus',
    'age': 23,
    'height': 1.65,
  };
  person['weight'] = 70;
  print(person['weight']);
}
