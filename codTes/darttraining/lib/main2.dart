void main() {
  User user1 = User('kratos', 300); //< fill this after constructor
  print(user1.name);
  user1.login();

  User user2 = User('atreus', 7);
  print(user2.name);

  SuperUser user3 = SuperUser('nunya', 299);
  print(user3.name);
  user3.publish();
  user3.login(); //also inherited
}

//class
class User {
  //properties
  String name; //1
  int age;

  //constructor
  User(String name /*2*/, int age) {
    this.name /*1*/ = name /*2*/;
    this.age = age;
  }

  //method or function
  void login() {
    print('user logged in');
  }
}

class SuperUser extends User {
  SuperUser(String name, int age) : super(name, age);
  //super calls superclasses or parent class

  void publish() {
    print('published update');
  }
}
