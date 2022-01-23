import 'dart:io';

/*
  Async - await nos permite resolver futures sin utilizar callbacks,
  y si se quiere usar es necesario que la función sea async.
*/
main() async {
  String path =
      '${Directory.current.path + '\\base\\Tipos especiales\\emails.txt'}';

  // await - espera a que se resuelva el future
  String emails = await readFile(path);

  print(emails);
}

Future<String> readFile(String path) async {
  File emailTxt = new File(path);

  return emailTxt.readAsString();
}
