/*
  Las clases abstractas no se pueden instanciar, pero si se pueden heredar,
  estas sirven como un modelo para las clases que hereden.
*/

abstract class AUTH_Model {
  String name = "";
  String lastName = "";
  String email = "";
  String password = "";
  String phone = "";

  void login() {
    print("Login");
  }

  void logout() {
    print("Logout");
  }

  void register() {
    print("Register");
  }
}

class User extends AUTH_Model {
  List<Map<String, dynamic>> books = [];

  get getBooks => books;
}

class Admin extends AUTH_Model {
  List<Map<String, dynamic>> users = [];

  // get all users
  set getUsers(List<Map<String, dynamic>> users) {
    this.users = users;
  }
}

main(List<String> args) {
  final Admin admin = new Admin();

  admin.login();
}
