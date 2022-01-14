/*
  Do while es un bucle que se ejecuta al menos una vez, y luego
  se repite mientras la condición sea verdadera.
*/
import 'dart:io';

main() {
  String option;

  do {
    print("1- Suma");
    print("2- Resta");
    print("3- Salir");

    option = stdin.readLineSync() ?? "";

    if (option == "1") {
      print("Ingre el primer número");
      int num1 = int.parse(stdin.readLineSync() ?? "");
      print("Ingresa el seguno número");
      int num2 = int.parse(stdin.readLineSync() ?? "");
      print("El resultado es: ${num1 + num2}");
    } else if (option == "2") {
      print("Ingre el primer número");
      int num1 = int.parse(stdin.readLineSync() ?? "");
      print("Ingresa el seguno número");
      int num2 = int.parse(stdin.readLineSync() ?? "");
      print("El resultado es: ${num1 - num2}");
    }
  } while (option != "3");
}
