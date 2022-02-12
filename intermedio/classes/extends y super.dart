class Person {
  String name = "";
  int age = 0;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  get getName => this.name;

  get getAge => this.age;
}

/*
  Extends: permite tener las propiedades y metodos de una clase padre.
  Super: permite acceder a los metodos y propiedades de la clase padre.
*/

class SuperMan extends Person {
  List<String> superPowers = [];

  SuperMan(String name, int age, List<String> superPowers) : super(name, age) {
    this.superPowers = superPowers;
  }

  get getSuperPower => this.superPowers;
}
