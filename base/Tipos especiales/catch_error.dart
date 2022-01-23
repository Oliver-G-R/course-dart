import 'dart:io';

/*
  CatchError, ayuda a interceptar los errores que se producen a la 
  hora de ejecutar una acción.
*/
main() async {
  String path =
      '${Directory.current.path + '\\base\\Tipos especiales\\emails.txt'}';

  readFile(path).then((value) => print(value)).catchError((e) => print(e));
}

Future<String> readFile(String path) async {
  File emailTxt = new File(path);

  // Crea un posible error
  if (emailTxt.existsSync()) {
    return emailTxt.readAsString();
  } else {
    throw "File not found";
  }
}
