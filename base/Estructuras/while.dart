/*
  El bulce while nos indica que se repita el ciclo mientras la condicion sea verdadera.
*/
import 'dart:io';

main() {
  /*
    Mientras que la contraseña admin y la contraseña cliente sean diffeerentes, se repite el ciclo.

    Esto hace que el programa se ejecute hasta que el usuario ingrese la contraseña correcta con un maximo de 3 intentos.
    Si el usuario ingresa la contraseña correcta, el programa se detiene y muestra un mensaje de bienvenida.
  */
  String passwordClient = "";
  String passwordAdmin = "admin";
  int contador = 0;

  while (passwordClient != passwordAdmin) {
    print("Ingrese la contraseña");
    passwordClient = stdin.readLineSync() ?? "";
    if (passwordAdmin != passwordClient) {
      print("Contraseña incorrecta");
      contador++;
    }
    if (contador == 3) {
      print("Se ha excedido el numero de intentos");
      break;
    }
  }

  if (passwordClient == passwordAdmin) {
    print("Bienvenido");
  }
}
