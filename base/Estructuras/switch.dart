/*
  Switch es una estrucrura selecctiva multiple, permite seleccionar una opcion de un conjunto de opciones en una sola variable.
*/

import 'dart:io';

main() {
  String op = "";

  print("Elige una opcion");
  print("2. Deposito");
  print("3. Retiro");
  op = stdin.readLineSync() ?? "";

  switch (op) {
    case "1":
      print("Accion de deposito");
      break;
    case "2":
      print("Accion de retiro");
      break;
    default:
      print("opcion no valida");
  }
}
