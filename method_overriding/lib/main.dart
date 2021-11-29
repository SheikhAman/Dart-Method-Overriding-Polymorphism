// Objectives
// 1. Exploring Method Overriding // reuse method and remodify it
// override mane method batil kore modify kora
// override intance variable a o kora  jai  batil kore intance variable modify kora , value child class a declare kore initialize kora.
// Method overriding : It is a mechannism by which the child class redefines a method in its parent class.
void main() {
  var dog = Dog(); // Dog() object created

  dog.eat(); // it looks for method of eat // first it will check eat method in Dog class if it does't find eat method in  Dog class then it will try to find it in parent class(Animal)
  print(dog.color);
}

class Animal {
  // parent class
  late String color = 'brown';
  void eat() {
    print('Animal is eating !');
  }
}

class Dog extends Animal {
  late String breed;
  late String color = 'Black'; // instance variable overridding
  void bark() {
    print('Bark !');
  }

  void eat() {
    // method name and return type should match like parent class
    super
        .eat(); // calling parent class using super keywword and printing the eat method  of super class
    print('Dog is eating !'); // method overriding
    super.eat();
  }
}
