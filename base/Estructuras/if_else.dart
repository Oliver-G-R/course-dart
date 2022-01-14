import 'dart:io';

main() {
  // If - Else
  String user1, user2;
  int age1, age2;

  /*
    Para poder tener los datos en consola, primero que todo debemos tener las variables definidas con el tipo de dato que vamos a tomar.

    Ocupamos la librería dart:io para poder leer datos de consola,
    usamos el operador ?? para poder asignar un valor por defecto a la variable en caso de que no se ingrese nada.

    Para los datos que son de tipo numérico hacemos lo mismo, 
    parseando el valor ingresado a un tipo numérico.
  */

  stdout.writeln("Nombre del la persona 1: ");
  user1 = stdin.readLineSync() ?? "";

  stdout.writeln("Edad de la persona 1: ");
  age1 = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  stdout.writeln("Nombre del la persona 2: ");
  user2 = stdin.readLineSync() ?? "";

  stdout.writeln("Edad de la persona 2: ");
  age2 = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;

  /*
    Si la edad de la persona 1 es mayor a la de la persona 2, 
    entonces se imprimirá el nombre de la persona 1, 
    de lo contrario, se imprimirá el nombre de la persona 2.
    En caso de que ambas personas tengan la misma edad,
    se imprimirá el nombre de la primer y segunda persona.

  */

  if (age1 > age2) {
    print("$user1 es mayor  $user2");
  } else if (age1 < age2) {
    print("$user2 es mayor  $user1");
  } else {
    print("$user1 y $user2 tiene la misma edad");
  }
}
