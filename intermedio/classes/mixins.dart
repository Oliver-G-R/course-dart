main() {
  final User user = User('w', '232');

  print(user.validate());
}

/*
  Los mixins son una forma de agregar funcionalidades a una clase,
  como un abtraccion, al igual que estos no se pueden instanciar,
  la unica differncia es que los mixins nopueden tener constructores. 
*/
mixin validateUser {
  bool validateEmail(String value) {
    if (value.isEmpty) {
      return false;
    }
    return true;
  }

  bool validatePassword(String value) {
    if (value.isEmpty) {
      return false;
    }
    return true;
  }
}

/*
  Para poder usarlo se usa la palabra reservada with,
  este hace uso del mixin para la clase. 
  En caso de ocupar mas de un mixin se separan por comas.
*/
class User with validateUser {
  String email;
  String password;

  User(this.email, this.password);

  bool validate() {
    return validateEmail(email) && validatePassword(password);
  }
}
