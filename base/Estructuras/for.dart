/*
    La estructura de repetitiva for nos ayuda a repetir una acción una cantidad de veces.

    En este ejemplo tenemos una variable i de tipo entero que
    inicializamos en 0 y una condición que nos dice que mientras 
    i sea menor que 10 imprimira ese valor en pantalla sumandole 1 y esta misma condición se incrementará en 1 en cada 
    iteración gracias a al operador ++.
  
    for (int i = 0; i < 10; i++) {
      print(i + 1);
    }
*/

import 'dart:io';

main() {
  /*
    Tenemos una simulación de un acceso a una "cuenta" de usuario,
    donde tenemos dos variables, una almacena una contraseña y otra esta vacía.  

    Mediante el bucle for se repetirá la acción hasta que la contraseña sea correcta, tal acción por cada iteración 
    se realizará una evaluación de la contraseña, si es correcta se imprimirá un mensaje que dirá "acceso concedido"
    y si no es correcta se imprimirá un mensaje que dirá "acceso denegado" hasta que la contraseña sea correcta.
  */

  String passwordDB = '1234', passwordClient = "";

  for (int i = 0; i < 3; i++) {
    stdout.write('Ingresa tu contraseña: ');
    passwordClient = stdin.readLineSync() ?? "";

    if (passwordClient == passwordDB) {
      print('Acceso concedido');
      break; //detiene el bucle
    } else {
      print('Aceso Denegado');
    }
  }
}
